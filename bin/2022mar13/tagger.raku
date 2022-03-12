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
#    say "lst_file: $lst_file";
    for $lst_file.IO.lines -> $file {
        ## TODO next if blank or begins with a #
        my $file_io = $file.IO;
        next if not $file_io ~~ :f;
        my ($loc, $base, $ext) = ( $file_io.dirname, $file_io.basename, $file_io.extension );
        my $shortbase = $base.subst(/\. .*? $ /,''); # strip the extension
        my $new_file = "$loc/$shortbase-$tag.$ext";
        $file_io.rename( $new_file );
        say "$new_file";
    }
}

## 

# if( $file_io ~~ :e & :f; ) {  # check it's a file and that it exists (redundant?) 
#  ...
# } 




# ===
# Author:  doom@kzsu.stanford.edu

