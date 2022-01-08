#!/usr/bin/env perl6
# 
# df_grep.raku            15 May 2021 

# STATUS working, though it feels slow 
## TODO default to boundary pinning on search terms  << >>

use v6;
use File::Find;

#   sub MAIN($path, :$force, :$recursive, :$home = '~/') {
#       # do stuff here
#   }

#   # command line
#   $ ./doit.pl --force --home=/home/someoneelse file_to_process


sub MAIN( $search_term, :$DEBUG ) {
    say "search_term: $search_term" if $DEBUG;
    my %params = extract_definitions();
    my @locs = %params{'DF_LOC'}, %params{'DF_RAWTEXT'};

##    \# .*? \# $   |
    my $exclude_pat = rx /
    \~$           |
    '/Hid/'       |
    '/Old/'       |
    '/Out/'       | 
    '/Processed/' |
    '/RCS/'       |
    '/Bak/'       |
    '/\.git/'  
    /;

    my $node_name_pat = rx/ <[0..9cA..Z_-]> ** 3..* /;   

    # this would be used only if there's another "loc" added
    my $name_pat_default = rx/ \/ <$node_name_pat> (\. | $) /;

    my %name_pat = (
        @locs[0] => rx/ \/ <$node_name_pat>  $ /,           # Thought, no extension
        @locs[1] => rx/ \/ <$node_name_pat>  \. html? $ /,  # doomfiles, *.html
    );

    my @hits;
    LOC:
    for @locs -> $loc {
        say "loc: $loc"  if $DEBUG;
        # the @files are Path objects that stringify as you'd expect
        # my @files = find( dir => $loc, type => 'file', exclude => $exclude_pat );    
        my @files = find( dir => $loc, type => 'file', exclude => $exclude_pat, recursive => False );    
        my $fno = 0; 
        my $name_pat = %name_pat{$loc} || $name_pat_default;
        FILE:
        for @files.grep( { m/ <$name_pat> / } ) -> $f {  
            say "f: $f"  if $DEBUG;
            my $lno = 0;
            my $hit = '';
            my $fh = $f.IO.open( :r, enc=>'utf8-c8' );
            for $fh.lines -> $line {
                if $line ~~ m:i/$search_term/ {
                    say "lno: $lno", " line: $line" if $DEBUG;
                    $hit = "$f:$lno:$line";
                    @hits.push( $hit );
                }
                $lno++;
            }
            $fno++;
            $fh.close;
        }
    }
    say "===";
    @hits>>.say if @hits;
}

# The parameters for the "doomfiles" project are centralized 
# (still) in the perl5 module Web::Definitions.
#
# This is a wrapper that extracts some of them, returning them as
# key-value pairs (a hash)
#
sub extract_definitions {
    # Web::Definitions has parameters in package vars (our) which are added to the export
    # list using a custom source filter.  (It is very easy to use this from raku, see?)
    my $p5_code =
      'perl -E \'use Web::Definitions qw(:all); say $DF_LOC; say $DF_RAWTEXT; print $DF_NODE_NAME_RULE\'';
    my @stuff = shell($p5_code, :out).out.split("\n");

    my ($df_loc, $df_raw, $df_nnr) = @stuff;

    my %ret = (
        DF_NODE_NAME_RULE => $df_nnr,
        DF_RAWTEXT        => $df_raw,
        DF_LOC            => $df_loc,
    );
    return %ret;
}


## SNIPPETS

#         my $dnnr = %params{'DF_NODE_NAME_RULE'};  # (?^x: [0-9cA-Z_-]{3,} )
#         say $dnnr;


#        for @files.grep( { m:P5/\/<$dnnr>(?:\.|$)/ } ) -> $f {  # $f is a Path object

#                if $line.grep({ m:i/$search_term/ }).so {  
