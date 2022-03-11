#!/usr/bin/env perl6
# splitting_filename_to_basename_and_extension_via_regexp.raku   11 Mar 2022 

use v6;

my $full = "/home/doom/tmp/something_or_other.txt";

my $base = $full.IO.basename;
my $ext = $full.IO.extension;
my $path = $full.IO.path;     ## same as full
my $loc = $full.IO.directory;

say "full: $path";
say "base: $base";
say "ext: $ext";
# base: something_or_other.txt
# ext: txt

