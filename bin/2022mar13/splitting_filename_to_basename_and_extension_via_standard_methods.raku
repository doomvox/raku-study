#!/usr/bin/env perl6
# splitting_filename_to_basename_and_extension_via_standard_methods.raku   11 Mar 2022  

use v6;

my $full = "/home/doom/tmp/something_or_other.txt";

my $base = $full.IO.basename;
my $ext = $full.IO.extension;
my $path = $full.IO.path;     ## same as full
my $loc = $full.IO.dirname;  ## had to look this up: my guess was "directory"

say "full: $path";   # full: /home/doom/tmp/something_or_other.txt
say "loc:  $loc";    # loc:  /home/doom/tmp
say "base: $base";   # base: something_or_other.txt
say "ext: $ext";     # ext: txt

## Note the basename *includes* the extention. 
## This is not wrong exactly, but it is disappointing:
#    base: something_or_other.txt

## "parts" method doesn't help:
say  $full.IO.parts;
# IO::Path::Parts.new("","/home/doom/tmp","something_or_other.txt")

# my $sans_ext = $base.subst(/\. .*? $ /,''); # okay, but can be fooled by multiple dots
## better
my $sans_ext = $base.subst(/\. <-[.]>*? $ /,'');  
say "sans_ext: $sans_ext";
# sans_ext: something_or_other


say 'one.two.three.txt'.subst(/\. <-[.]>*? $ /,'');  
# one.two.three
