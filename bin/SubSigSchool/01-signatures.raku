#!/usr/bin/env raku


# ~/End/Cave/RakuStudy/Wall/raku-study/bin/SubSigSchool/01-signatures.raku
# Friday November 27, 2026  10:19 PM

sub inane_report ($first, $second, *@rest) {
  say "the first: $first";
  say "the second: $second";  
  say "the rest: ", @rest;
}

inane_report('left', 'right', 'up', 'down', 'sideways');
