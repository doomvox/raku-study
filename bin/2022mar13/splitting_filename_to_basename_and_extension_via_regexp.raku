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
    ## continue experimenting with this:
    my ($base, $ext);
    $full.match( / ^ (.*?) \. (<-[.]>*?) $ / );
    say $/;
}
