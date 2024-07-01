#!/usr/bin/env raku
# 
# list_some_primes.raku            30 Jun 2024 

use v6;

## 5x5
## 1 to 100, inclusive

{
    say "==1==";
    ## First, it took me a moment to remember to use a hyper here:

    # say (1..100).is-prime.[0..24];
    # # Index out of range. Is: 1, should be in 0..0

    # say ( (1..100).is-prime ).[0..24];
    # Index out of range. Is: 1, should be in 0..0

    say (1..100)>>.is-prime.[0..24];
    # (False True True False True False True False False False True False True False False False True False True False False False True False False)

    # Next problem: I was expecting .is-prime to be more perlish,
    # and act like a filter that passes through primes.  

    # This being Raku, it returns an actual Bool.

}

{
    say "==2==";
    ## confirming the hyper is needed when assigning to an array variable
    my @primes = (1..100)>>.is-prime;
    say @primes[0..24];
    # (False True True False True False True False False False True False True False False False True False True False False False True False False)
}


{
    say "==3==";
    ## A weird side-trip (mental glitch: why didn't I just reach for .grep?)
    my @primes = (1..100).map({  .is-prime  ?? $_ !! Nil });
    say @primes[0..24];

    # ((Any) 2 3 (Any) 5 (Any) 7 (Any) (Any) (Any) 11 (Any) 13 (Any) (Any) (Any) 17 (Any) 19 (Any) (Any) (Any) 23 (Any) (Any))

}



{
    say "==4==";
    ## Explicit for loop with gather/take 
    my @primes = gather
    LOOPY:
      for (1..100) {
        if .is-prime {
            take $_;
#            say $++;  ## always 0?
#             state $c++;
#             last LOOPY if $c > 25;
            state $c;
            last LOOPY if $c++ > 25;

        }
       }
#    say @primes.[0..24];
#    say @primes.[0..3];
    say @primes;
    say @primes[24];
}


exit;

{
    say "==5==";
    ## Tim solution (duh:  use grep to filter on a computed value):
    say (1..*).grep(*.is-prime).head(25);
    # (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)

    say (1..*).grep(*.is-prime).[0..24];
    # (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
}


{
    say "==6==";
    # Rob's idea (seems to work)
    constant @prime2 is export = 2, 3, (* + 2 if *.is-prime) … ∞;
    ## some discussion on whether this can work... the two '*" may be two params?
    say @prime2.head(5); # (2 3 5 7 9)
}

{
    say "==7==";
    # Another approach (works also):
    constant @prime3 is export = 2, 3, {$^a + 2 if $^a.is-prime} … ∞;
    say @prime3.head(5); # (2 3 5 7 9)
}
 {   
    say "==8==";
    # Mark A suggests this (but doesn't compile?)
    # constant @prime4 is export = 2, 3, ->$n{$n + 2 if $n.is-prime} … ∞;

    # But this does (fun):
    constant @prime4 is export = 2, 3, -> $n {$n + 2 if $n.is-prime} … ∞;


# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jun30/list_some_primes.raku:74
# ------> nstant @prime4 is export = 2, 3, ( -> $n⏏ + 2 if $n.is-prime) … ∞;
    say @prime4.head(5); # (2 3 5 7 9)
}
