#!/usr/bin/env perl6
# 
# splitting_filename_to_basename_and_extension_via_regexp.raku            11 Mar 2022 

use v6;

my $full = "/home/doom/tmp/something_or_other.txt";

## I thought this might work (it doesn't):
my ($base, $ext) = $full.match( / ^ (.*?) \. (<[-.]>*?) $ / );

## continue experimenting with this:
my ($base, $ext);
$full.match( / ^ (.*?) \. (<[-.]>*?) $ / );
say $/;
