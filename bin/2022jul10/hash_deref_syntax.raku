#!/usr/bin/env perl6
# 
# hash_deref_syntax.raku            29 Jun 2022 

use v6;

my %level =
  godzilla => 9,
  mothera  => 6,
  ghidora  => 10,
  gammera  => 5,
  golem    => 4,
  rhodan   => 6;

say %level<<mothera rhodan>>;  # (6 6)


my $m1 = 'godzilla';
my $m2 = 'ghidora';

say %level<< $m1 $m2 >>;    # (9 10)

%level{'doris day'} = 2;

say %level<< 'doris day' golem >>;  # (2 4)


say %level{$m1};    # 9
say %level<<$m2>>;  # 10


my $m3 = 'gAMMeRa';
say %level{ $m3 };     # (Any)
say %level{ $m3.lc };  # 5

say %level<< $m3.lc >>;  # ((Any) (Any))

## Hm: treats that as two keys?



say %level{'godzilla'}:exists;
