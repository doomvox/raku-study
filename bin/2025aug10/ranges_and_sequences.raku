#!/usr/bin/env raku
# 
# ranges_and_sequences.raku            09 Aug 2025 

use v6;

# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024apr21/chained_sequences_again.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2021feb21/simon_proctor_range_setops.pl6
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jan16/bill_issue_with_spaces_on_range_ops.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jun19/controlling_range_of_regex_capture.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jun19/controlling_range_of_regex_capture_without_named_regex.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jun19/controlling_range_of_regex_capture_without_named_regex-ii.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023may21/range_bounds_method.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023dec03/ranges_of_points_kindof.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jun30/non_numeric_ranges.txt
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024aug25/messing_with_ranges.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024aug25/ranges_positional.raku
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024nov24/range_of_strings.raku


# William Michels: combining ranges and sequences is a nightmare

{
    my $r =  3 .. 9;
    say $r;
    # 3..9

    say "A: ";
    if ( 6 ~~ $r ) {
        say "six matches range";
    }
    # six matches range

    say "B: ";
    if ( 2 ~~ $r ) {
        say "two matches range";
    } else {
        say "two is not in range";
    }
    # two is not in range
}
say "===";

## Note: triple dot is not just a variant of double dot.
{
   # Potential difficulties:
   #     Useless use of ... in sink context
   #     at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2025aug10/ranges_and_sequences.raku:45
   #     ------>    my $s = 3 ...⏏ 9;

   my $s := 3 ... 9;
   say $s;

   say "A: ";
   if ( 6 ~~ $s ) {
        say "six matches range";
    }
    # <no output>

    say "B: ";
    if ( 2 ~~ $s ) {
        say "two matches range";
    } else {
        say "two is not in range";
    }
    # two is not in range
}


# {
#    my $s = 3, 4, 5 ... 9;
#    say $s;

#    say "A: ";
#    if ( 6 ~~ $s ) {
#         say "six matches range";
#     }
#     # <no output>

#     say "B: ";
#     if ( 2 ~~ $s ) {
#         say "two matches range";
#     } else {
#         say "two is not in range";
#     }
#     # two is not in range
# }
