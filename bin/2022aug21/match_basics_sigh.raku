#!/usr/bin/env perl6
# 
# match_basics_sigh.raku            21 Aug 2022 

use v6;

## Having some trouble with .match.
## Starting again with the examples in the docs:

say "properly".match('perl');                     # perl
say "properly".match(/p.../);                     # prop
say "1 2 3".match([1,2,3]);                       # 1 2 3
say "a1xa2".match(/a./, :continue(2));            # a2

say 'several words here'.match(/\w+/,:global);    # ｢several｣ ｢words｣ ｢here｣
say 'abcdef'.match(/.*/, :pos(2));                # cdef
say "foo[bar][baz]".match(/../, :1st);            # fo
say "foo[bar][baz]".match(/../, :2nd);            # o
say "foo[bar][baz]".match(/../, :3rd);            # ba
say "foo[bar][baz]".match(/../, :4th);            # r
say "foo[bar][baz]bada".match('ba', :x(2));       # ｢ba｣ ｢ba｣





say "===";

say 'abcdef'.match(/.*/, :pos(0));                # abcdef
say 'abcdef'.match(/.*/, :pos(1));                # bcdef


my $mo = 'abcdef'.match(/.*/, :pos(2));                

dd $mo; # Match $mo = Match.new(:orig("abcdef"), :from(1), :pos(6))

say $mo.pos; # 6

{
  ## if the match fails using :pos you don't get a match object
  my $str =
q{alpha
  beta
  gamma};

  my $mo = $str.match(/$$/, :pos(7));
  dd $mo;
  ## Any $mo = Any
}


{
  ## continue is similar to pos, but you get a match object if it fails
  my $str =
q{alpha
  beta
  gamma};

  my $mo = $str.match(/$$/, :continue(7));
  dd $mo;
  ## Match $mo = Match.new(:orig("alpha\n  beta\n  gamma"), :from(12), :pos(12))
}

{
  # so, why is a match on /$$/ failing?
  # if you're right on the line boundary, it does match
  # I *thought* it would sweep forward from given pos
  # but not if match fails *at* pos
  my $str =
q{alpha
  beta
  gamma};

  my $mo = $str.match(/$$/, :pos(5));
  dd $mo;
  ## Match $mo = Match.new(:orig("alpha\n  beta\n  gamma"), :from(5), :pos(5))
}
