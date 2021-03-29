#!/usr/bin/env perl6
# 
# doomfiles_browse_sequence-ii.raku            28 Mar 2021 

use v6;
# use Grammar::Tracer;

my grammar df {
    regex TOP         { '<HTML>'  <head><body> '</HTML>' \s*                                                       }
    regex head        { '<HEAD>' \s* <title> '</HEAD>' \s*                                                         }
    regex title       { '<TITLE>' 'The doomfiles' ' - ' <node_name> '.html' '</TITLE>' \s*                         }
    regex body        { '<BODY>' \s*  <control_1>  \s* <h1> \s* '<PRE>' <stuff> <control_2> '</PRE>' '</BODY>' \s* }
    regex control_1   { '<PRE>' \s+ <prev_link> \s+ <top_link> \s* '</PRE>'                                            }
    regex h1          { '<H1' [\s+ 'align="left"'] '>' <node_name> '</H1>'                                         }
    regex ruler       { '--------'                                                                                 }
    regex control_2   { <ruler> \s+ <next_link> \s*                                                                }

    regex stuff       { ( .* )                                                                                    }

    regex top_link    { '<A' \s+ 'HREF="TOP.html">[TOP]</A>'                                  }
    regex link        { '<A' \s+ 'HREF="' <node_name> '.html' '">' <label> '</A>'                                  }

    regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ {} $0 ']' '</A>'              }
    regex next_link   { ^^ '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[NEXT -' \s+ {} $0 ']' '</A>'        $$ }

    regex node_name   { <[A..Zc0..9_-]>*? }   # Doomfiles node names are like:  McNODE_NAME_7
    regex label       { <-[<]>*? } # > 
    }


my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";
chdir( $loc );

my $init = 'TOP';
say $init;
my $init_file = "$init.html";
my $node = handle_first_node( $init_file );
say $node.Str if $node;

do_rest_whole_parse( $node );

# do_rest_whole_parse( 'BURNING_MOMENTS' );
# do_rest_by_line( $node );

## doesn't work just now:
## do_rest_parsefile_individual_regex( $node );

sub do_rest_by_line( $init ) {
    my $node = $init;
    while ( $node ) {
        my $file="$node.html";
        for "$file".IO.lines -> $line {
            # say "line: $line";
            my $match = df.parse( $line, :rule('next_link') );   

            $node = $match.[0].<node_name>;
            if $node { 
                say $node.Str;
                last;
            }
        }
    }
}

sub do_rest_whole_parse( $init ) {
    my $node = $init;  ## to start "TOP"
    while ( $node ) {
        my $file="$node.html";
        my $match = df.parsefile( $file ) orelse die "parse failure on $node"; 
        $node = $match.<body><control_2>.<next_link>.[0].<node_name>; 
#        $node = $match.gimmie_one( 'node_name' );  ## Dom::Tiny?  with a "find" to search tree (yary hint)
        say $node.Str if $node;
        exit if $node eq 'COSMETIC';
    }
}

sub do_rest_parsefile_individual_regex( $init ) {
    my $node = $init;
    while ( $node ) {
        my $file="$node.html";
        my $match = df.parsefile( $file, :rule('next_link') ); 
        say $match;
        $node = $match.[0].<node_name>; 
        say $node.Str if $node;
    }
}




sub handle_first_node ( Str $init = 'TOP.html') {
#    my $init = "TOP.html";
#    my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";  ## TODO better to use pwd?
    my $node;
    for "$init".IO.lines -> $line {
        my $match = df.parse( $line, :rule('next_link') ); 
        $node = $match.[0].<node_name>; 
        last if $match;
    }
    return $node;
}


### On larger files, can see a crash "MoarVM panic"
### ...
# ACT_ONE
# IMPROPER_BOHEMIANS
# GREENWICH_SECEDES
# BURNING_MOMENTS
# MoarVM panic: Memory allocation failed; could not allocate 1007328 bytes

## Note, it also hangs and chugs on DELANY
# Does it have trouble with larger files?
#  -r--r--r--  1 doom doom   14360 Mar 20 10:37 DELANY.html
#  -r--r--r--  1 doom doom   30200 Mar 20 10:37 BURNING_MOMENTS.html
# Too much backtracking?

## It is one of the larger files (none of the larger ones are hit earlier)
#   -r--r--r--  1 doom doom  278451 Mar 20 10:38 WHATSNEW.html
#   -r--r--r--  1 doom doom  164552 Mar 20 10:38 CONTENTS.html
#   -r--r--r--  1 doom doom   58222 Mar 20 10:37 NAUGHT_SEVEN.html
#   -r--r--r--  1 doom doom   47381 Mar 20 10:37 DINOSAUR_WARS.html
#   -r--r--r--  1 doom doom   39227 Mar 20 10:37 WAYOUT.html
#   -r--r--r--  1 doom doom   32594 Mar 20 10:37 BICYCLES.html
#   -r--r--r--  1 doom doom   31826 Mar 20 10:37 BURNING_WILD.html
#   -r--r--r--  1 doom doom   31420 Mar 20 10:37 THE_VOICE_OF_DOOM.html
#   -r--r--r--  1 doom doom   30200 Mar 20 10:37 BURNING_MOMENTS.html
#   -r--r--r--  1 doom doom   25213 Mar 20 10:37 SCAFFOLDING.html

