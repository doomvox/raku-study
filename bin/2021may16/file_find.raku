#!/usr/bin/env perl6
# 
# file_find.raku            16 May 2021 

use v6;

## side issue: mkdir seems to do what I want without raising inane errors/warnings
## there's some question as to whether this is correct behavior: bug?

my $random_name = "mxyplct";
my $some_loc = '/home/doom/tmp/$random_name';
{
    mkdir("$some_loc");  
    mkdir("$some_loc");  
       ## no error if it exists already  (could be a bug, actually?)
    mkdir("$some_loc/yaddah/yaddah/yaddah");
       ## creates intermediate directories without complaint (correct behavior?)
    say "still going...";
}

say '---';
## create some files for us to grep through 
my $loc = '/home/doom/tmp/grep_me';
chdir( $loc );
# create a file for each monster with one line in each
my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
for @monsters -> $name {
    $name.IO.spurt("The $name attacks!");
}
# create a sub directory with similar files in it
my $new_loc = "$loc/the_depths";
{
    mkdir( $new_loc );   ## no error if it exists already  (could be a bug, actually?)
    chdir( $new_loc );
#    my @numbers  = <wuhn tew thuree foah fahv sex sevhun hate>;
    for @monsters -> $name {
#        my $num = @numbers.pop;
        my $num = $++;
        $name.IO.spurt("The $name attacks from the depths!: $++\n");
    }
    chdir( $loc );
}

{
    ## comparing the built-in "dir" to the File::Find module's "find" (which recurses)
    my @check = dir( $loc ).sort;
    say "dir sees: ", @check.elems; # dir sees: 9   
    say @check[0..2];
    # ("/home/doom/tmp/grep_me/blob".IO "/home/doom/tmp/grep_me/dracula".IO "/home/doom/tmp/grep_me/godzilla".IO)
    @check>>.say;

    say "===";
    use File::Find;
    ## The first line of SYNOPSIS in the *old* docs suggest using the binding operator
    ##   my @list := find(dir => $loc);  
    ##   # Type check failed in binding; expected Positional but got Seq ((IO::Path.new("/home...)

    my @list = find( dir => $loc, type => 'file' );  
    say "find sees: ", @list.elems;   # find sees: 16
    @list>>.say;

    say "---";
    # for @files -> $f {
    for @list -> $f {
        my @hits = 
          $f.lines.grep: /:i godzilla/;

        # .say; # Q: what's in $_  # (Any)
        say @hits if @hits;
    }
}





    # sub find (:$dir!,
    #            :$name,                             # regex is smartmatched against full path
    #            :$type,                             # 'file' 'dir' 'symlink'
    #            :$exclude = False,                  # e.g. '.git', value smartmatched:  use a junction of IO objects (?)
    #       Bool :$recursive = True,                 # recursive => False  to do one level, otherwise recurses
    #       Bool :$keep-going = False) is export {   # keep-going => True  keep chugging on errors

    # Q: on exclude, could I use an "all" intermixing IO objects and regexs?
    #    or, just use regexs to start with, since I'm not using windows...
