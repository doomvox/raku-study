#!/usr/bin/env perl6
# 
# isolated_file_list_assigned_to_scalar.raku            27 Feb 2022 

use v6;

{
    my $data = 1, 2, 3;
    say $data.raku;  # 1 
    say $data.WHAT;  # (Int)
}

