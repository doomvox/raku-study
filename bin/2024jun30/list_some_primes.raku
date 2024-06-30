#!/usr/bin/env raku
# 
# list_some_primes.raku            30 Jun 2024 

use v6;

## 5x5
## 1 to 100, inclusive



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
    LOOPY:
      for (1..1000) {
        if .is-prime {
            take $_;
            say $++;  ## always 0?
            last LOOPY if $++ > 25;
        }
       }
#    say @primes.[0..24];
#    say @primes.[0..3];
    say @primes;
    say @primes[24];
}


{
    say "--";
    ## Tim solution:
    say (1..*).grep(*.is-prime).head(25);
    # (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)

    say (1..*).grep(*.is-prime).[0..24];
    # (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
}


{ # Rob's idea (seems to work)
    constant @prime2 is export = 2, 3, (* + 2 if *.is-prime) … ∞;
    ## some discussion on whether this can work... the two '*" may be two params?
    say @prime2.head(5); # (2 3 5 7 9)
}

{
    # Another approach (works also):
    constant @prime3 is export = 2, 3, {$^a + 2 if $^a.is-prime} … ∞;
    say @prime3.head(5); # (2 3 5 7 9)
}
 {   
    # Mark A suggests (doesn't compile?)
    constant @prime4 is export = 2, 3, ->$n{$n + 2 if $n.is-prime} … ∞;

# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jun30/list_some_primes.raku:74
# ------> nstant @prime4 is export = 2, 3, ( -> $n⏏ + 2 if $n.is-prime) … ∞;
    say @prime4.head(5); # (2 3 5 7 9)
}
