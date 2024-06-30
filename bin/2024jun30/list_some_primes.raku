#!/usr/bin/env raku
# 
# list_some_primes.raku            30 Jun 2024 

use v6;

{
    # say (1..100).is-prime.[0..24];
    # # Index out of range. Is: 1, should be in 0..0
}

{
    my @primes = (1..100).is-prime;
    say @primes[0..24];
    # (False (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any))
}


{
    my @primes = (1..100).map({  .is-prime  ?? $_ !! Nil });
    say @primes[0..24];
# (False (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any) (Any))
# ((Any) 2 3 (Any) 5 (Any) 7 (Any) (Any) (Any) 11 (Any) 13 (Any) (Any) (Any) 17 (Any) 19 (Any) (Any) (Any) 23 (Any) (Any))

}



{
    my @primes = gather
      for (1..100) {
        take $_ if .is-prime;
       }
#    say @primes.[0..24];
#    say @primes.[0..3];
    say @primes;
    say @primes[24];
}
