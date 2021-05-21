#!/usr/bin/env perl6
# 
# file_find.raku            16 May 2021 

use v6;
use File::Find;

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
    for @monsters -> $name {
        $name.IO.spurt("The $name attacks from the depths!: {$++} \none more line\nstill another\nAnd again: $name\n");
    }
    chdir( $loc );
}
# more subdirs ("Old", "Hid") we can exclude from searches

{
    my $hid_loc = "$loc/Hid";
    mkdir( $hid_loc );
    chdir( $hid_loc );
    "godilla_hid".IO.spurt("A godzilla file I want to exclude");

    my $old_loc = "$loc/Old";
    mkdir( $old_loc );
    chdir( $old_loc );
    "godilla_old".IO.spurt("The second godzilla file I want to exclude");
}

## ========
## main: now play with searching the above files
{
    ## comparing the built-in "dir" to the File::Find module's "find" (which recurses)
    my @check = dir( $loc ).sort;
    say "dir sees: ", @check.elems; # dir sees: 9   
    say @check[0..2];
    # ("/home/doom/tmp/grep_me/blob".IO "/home/doom/tmp/grep_me/dracula".IO "/home/doom/tmp/grep_me/godzilla".IO)
    @check>>.say;

    say "---";
    ## The first line of SYNOPSIS in the *old* File::Find docs uses the binding operator
    ##   my @list := find(dir => $loc);  
    ##   # Type check failed in binding; expected Positional but got Seq ((IO::Path.new("/home...)

    my @list = find( dir => $loc, type => 'file' );  
    say "find sees: ", @list.elems;   # find sees: 18
    @list>>.say;

    say "---";
    # now search through the files for any with lines that match grep pattern
    for @list -> $f {
        my @hits = 
          $f.lines.grep: /:i godzilla/;
        @hits>>.say if @hits;
        ## TODO need to trick this out to display file names and line numbers
    }
}


## getting closer to real grep_find code
say "---";
{
    my @files = find( dir => $loc, type => 'file' );  
    say "basic find sees: ", @files.elems;   # find sees: 18
}
{

{
        say "---";
        my @exc_str =
        ( # note: need to quote regex metachars to use in rx later
            "'/'Old'/'",
            "'/'Hid'/'"
        );

        my $exc_all_str = join '|', @exc_str;
        my $exc_all_pat = rx/<$exc_all_str>/;

        my @files = find( dir => $loc, type => 'file', exclude => $exc_all_pat );    
        say "find exclude of built-up pattern: ", @files.elems;
        # find exclude of built-up pattern: 16


}
{
        say "---";
        my @exc_str =
        ( 
            "/Old/",
            "/Hid/"
        );

        my $exc_all_str = join '|', @exc_str>>.quotemeta;
        my $exc_all_pat = rx/<$exc_all_str>/;

        my @files = find( dir => $loc, type => 'file', exclude => $exc_all_pat );    
        say "find exclude of built-up pattern: ", @files.elems;
        # find exclude of built-up pattern: 16


    }

exit;

    ## use File::Find with exclude feature
    my @exclude =
    (
        rx/ '/' Old '/' /,
        rx/ '/' Hid '/' /,
    );
    
    {
        my @files = find( dir => $loc, type => 'file', exclude => @exclude );    
        say "find exclude of array of patterns sees: ", @files.elems;
        # find exclude of array of patterns sees: 18 (includes two Old/Hid files) 
    }

    {
        ## bleeding crazy: using a junction with exclude puts the output into a junction
        my @files = find( dir => $loc, type => 'file', exclude => any(@exclude) );    
        say "find exclude of junction sees: ", @files.elems;
        @files>>.say;
        # any(("/home/doom/tmp/grep_me/godzilla".IO "/home/doom/tmp/grep_me/mothera".IO "/home/doom/tmp/grep_me/rhodan".IO "/home/doom/tmp/grep_me/tingler".IO "/home/doom/tmp/grep_me/wolfman".IO "/home/doom/tmp/grep_me/dracula".IO "/home/doom/tmp/grep_me/horta".IO "/home/doom/tmp/grep_me/blob".IO "/home/doom/tmp/grep_me/the_depths/godzilla".IO "/home/doom/tmp/grep_me/the_depths/mothera".IO "/home/doom/tmp/grep_me/the_depths/rhodan".IO "/home/doom/tmp/grep_me/the_depths/tingler".IO "/home/doom/tmp/grep_me/the_depths/wolfman".IO "/home/doom/tmp/grep_me/the_depths/dracula".IO "/home/doom/tmp/grep_me/the_depths/horta".IO "/home/doom/tmp/grep_me/the_depths/blob".IO "/home/doom/tmp/grep_me/Hid/godilla_hid".IO), ("/home/doom/tmp/grep_me/godzilla".IO "/home/doom/tmp/grep_me/mothera".IO "/home/doom/tmp/grep_me/rhodan".IO "/home/doom/tmp/grep_me/tingler".IO "/home/doom/tmp/grep_me/wolfman".IO "/home/doom/tmp/grep_me/dracula".IO "/home/doom/tmp/grep_me/horta".IO "/home/doom/tmp/grep_me/blob".IO "/home/doom/tmp/grep_me/the_depths/godzilla".IO "/home/doom/tmp/grep_me/the_depths/mothera".IO "/home/doom/tmp/grep_me/the_depths/rhodan".IO "/home/doom/tmp/grep_me/the_depths/tingler".IO "/home/doom/tmp/grep_me/the_depths/wolfman".IO "/home/doom/tmp/grep_me/the_depths/dracula".IO "/home/doom/tmp/grep_me/the_depths/horta".IO "/home/doom/tmp/grep_me/the_depths/blob".IO "/home/doom/tmp/grep_me/Old/godilla_old".IO))
    }
    
    {
        ## still crazy
        my @files = find( dir => $loc, type => 'file', exclude => @exclude.any );    
        say "find exclude of junction from method sees: ", @files.elems;
        # find exclude of junction from method sees: 1
        # @files>>.say;
    }


    {
        ## try a single lone pattern
        my @files = find( dir => $loc, type => 'file', exclude => rx/Old/ );    
        say "find exclude of a single, simple pattern sees: ", @files.elems;
        # find exclude of a single, simple pattern sees: 17
        # @files>>.say;
    }

    {
        ## trying a single complex pattern
        my @files = find( dir => $loc, type => 'file', exclude => rx/Old|Hid/ );    
        say "find exclude of a single, complex pattern sees: ", @files.elems;
        # find exclude of a single, complex pattern sees: 16
    }

    {
        ## trying a complex built-up pattern
        # my $pat = join('|', @exclude);
        ## Regex object coerced to string (please use .gist or .raku to do that)

        # my @files = find( dir => $loc, type => 'file', exclude => $pat );    
        # say "find exclude of complex built-up pattern sees: ", @files.elems;
        # # find exclude of complex built-up pattern sees: 18
    }

#     {
#         ## trying a complex built-up pattern
#         my $pat = rx/ <{ join('|', @exclude) }> /;
#         ## Regex object coerced to string (please use .gist or .raku to do that)

#         my @files = find( dir => $loc, type => 'file', exclude => $pat );    
#         say "find exclude of complex built-up pattern sees: ", @files.elems;
#         # find exclude of complex built-up pattern sees: 18
#     }





}



## TODO come back to this:
#     say "---";
#     # now search through the files for any with lines that match grep pattern
#     for @files -> $f {
#         my @hits = 
#           $f.lines.grep: /:i godzilla/;
#         @hits>>.say if @hits;
#         ## TODO need to trick this out to display file names and line numbers
#     }




    # sub find (:$dir!,
    #            :$name,                             # regex is smartmatched against full path
    #            :$type,                             # 'file' 'dir' 'symlink'
    #            :$exclude = False,                  # e.g. '.git', value smartmatched:  use a junction of IO objects (?)
    #       Bool :$recursive = True,                 # recursive => False  to do one level, otherwise recurses
    #       Bool :$keep-going = False) is export {   # keep-going => True  keep chugging on errors

    # Q: on exclude, could I use an "all" intermixing IO objects and regexs?
    #    or, just use regexs to start with, since I'm not using windows...
