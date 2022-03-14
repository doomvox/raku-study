#!/usr/bin/env perl6
# 
# splitting_filename_to_basename_and_extension_via_regexp.raku            11 Mar 2022 

use v6;

my $full = "/home/doom/tmp/something_or_other.txt";

{
    # Looking for a one-line syntax that extracts multiple matches from match object
    my ($base, $ext) = ( $full.match( / ^ (.*?) \/ (<-[.]>*?) $ / ) );  ## tried appending:  .list  >>.Str   
    say "base: $base  ", "ext: $ext";
}

{
    ## back to basics
    my ($base, $ext);
    $full.match( / ^ (.*?) \. (<-[.]>*?) $ / );
    say $/;
# 0 => ｢/home/doom/tmp/something_or_other｣
# 1 => ｢txt｣

    say $/.list>>.Str;
    # (/home/doom/tmp/something_or_other txt)

    ($base, $ext) = $/.list>>.Str;
    say "base: $base  ", "ext: $ext";
}
