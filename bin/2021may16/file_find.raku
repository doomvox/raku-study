#!/usr/bin/env perl6
# 
# file_find.raku            16 May 2021 

use v6;

## create some files for us to grep through 
my $loc = '/home/doom/tmp/grep_me';
chdir( $loc );
# create a file for each monster with one line in each
my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
for @monsters -> $name {
    $name.IO.spurt("The $name attacks!");
}

my $new_loc = "$loc/the_depths";
{
    mkdir( $new_loc );   ## no error if exists already  (could be a bug, actually?)
    chdir( $new_loc );
    my @numbers  = <wuhn tew thuree foah fahv sex sevhun hate>;
    for @monsters -> $name {
        my $num = @numbers.pop;
        $name.IO.spurt("The $name attacks from the depths!\n$num\n");
    }
    chdir( $loc );
}

{
    my @check = dir( $loc ).sort;
    say @check[0..2];
    # ("/home/doom/tmp/grep_me/blob".IO "/home/doom/tmp/grep_me/dracula".IO "/home/doom/tmp/grep_me/godzilla".IO)
    @check>>.say;

    say "===";
    use File::Find;
    ## my @list := find(dir => $loc);  
    ##  # Type check failed in binding; expected Positional but got Seq ((IO::Path.new("/home...)

    my @list = find( dir => $loc, type => 'file' );  
    @list>>.say;

    # my @files = @list>>.Str;
    # The iterator of this Seq is already in use/consumed by another Seq

    say "---";
    # for @files -> $f {
    for @list -> $f {
        my @hits = 
          $f.lines.grep: /:i godzilla/;

        # .say; # Q: what's in $_  # (Any)
        say @hits if @hits;
    }

}

{
    mkdir("$new_loc/yaddah/yaddah/yaddah");   ## creates intermediate directories without complaint (correct behavior?)
    say "still here?";
}

{
    mkdir("$new_loc");  
}




    # sub find (:$dir!,
    #            :$name,                             # regex is smartmatched against full path
    #            :$type,                             # 'file' 'dir' 'symlink'
    #            :$exclude = False,                  # e.g. '.git', value smartmatched:  use a junction of IO objects (?)
    #       Bool :$recursive = True,                 # recursive => False  to do one level, otherwise recurses
    #       Bool :$keep-going = False) is export {   # keep-going => True  keep chugging on errors

    # Q: on exclude, could I use an "all" intermixing IO objects and regexs?
    #    or, just use regexs to start with, since I'm not using windows...
