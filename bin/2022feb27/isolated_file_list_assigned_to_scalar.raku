#!/usr/bin/env perl6
# 
# isolated_file_list_assigned_to_scalar.raku            27 Feb 2022 

use v6;

{
    my $data = 1, 2, 3;
    say $data.raku;  # 1 
    say $data.WHAT;  # (Int)
}

# WARNINGS for /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022feb27/isolated_file_list_assigned_to_scalar.raku:
# Useless use of constant integer 3 in sink context (lines 8, 8)
# Useless use of constant integer 2 in sink context (lines 8, 8)
# 1
# (Int)
