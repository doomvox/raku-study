#!/usr/bin/env perl6
# 
# tagger.raku            11 Mar 2022 

## Given a list of files (full paths, *.lst style),
## append the given tag string to each file name.
## Echoes the new name to stdout.

## Example:
##   tagger.raku  files_to_rename.lst  tag_string > files_after_renaming.lst


use v6;

sub MAIN( $lst_file, $tag ) {
    for $lst_file.IO.lines -> $line { 
       ## skip blank lines and comments (and emacs backups)
       next if $line ~~ m/^\#/;
       next if $line ~~ m/^\s*?$/;
       next if $line ~~ m/\~$/;
       my $file_io = $line.IO;
       next if not $file_io ~~ :f;
       my ($loc, $base, $ext) = ( $file_io.dirname, $file_io.basename, $file_io.extension );
       # strip the file extension
       my $shortbase = $base.subst(/\. <-[.]>*? $ /,'');  

       # Should also work:
       # my $shortbase = $base.chop( $ext.elems + 1 );

       my $new_file = "$loc/$shortbase-$tag.$ext";
       $file_io.rename( $new_file );

#       unlink( $line ); ## TODO why did I need to do this?
#                        ## .rename was doing a copy not a rename
#                        ## can't reproduce the problem now-- 2022jun19

       say "$new_file";
    }
}

## 

# if( $file_io ~~ :e & :f; ) {  # check it's a file and that it exists (redundant?) 
#  ...
# } 




# ===
# Author:  doom@kzsu.stanford.edu

