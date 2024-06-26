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

    # And that's the next problem: I was expecting .is-prime to be more perlish,
    # and act like a filter that passes through only primes, and a false value otherwise
    #
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

            ## want to stop working once we have 25 (premature optimization...)

            ## a raku oddity, this anon var is local to the *if* block
            #  say $++;  ## always 0?

            ## A state var works as a loop counter
            # state $c++;
            # last LOOPY if $c > 25;

            ## Some prefer this for readability
            state $c;
            last LOOPY if $c++ > 25;
        }
       }
    say @primes.[0..24]; # asking for just the first 25 (without the above 'premature optimization')
       ## The solution
       ## (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
    say @primes;
       ## This is also the solution:
       ## [2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97]
    say @primes.elems; # 25.  There are *exactly* 25 primes between 1 and 100.
                       #      Weird: for some reason I expected more.
    say @primes[24];   # 97   Yup, the last value is really the 25th one.
}

{
    say "==5==";
    ## Mark A solution (*he* had no trouble remembering to use grep to filter on a computed value):
    say (1..*).grep(*.is-prime).head(25);
    # (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)

    ## i've got a slight preference for using the range here, rather than .head(25):
    say (1..*).grep(*.is-prime).[0..24];
    # (2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97)
}


{
    say "==6==";
    # Rob's idea (works):
    constant @prime2 is export = 2, 3, (* + 2 if *.is-prime) … ∞;
    ## there was some discussion on whether that could work: maybe the two '*' were two different params?
    say @prime2.head(5); # (2 3 5 7 9)
}

{
    say "==7==";
    # Another approach, if '*' placeholders make you nervous (works also):
    constant @prime3 is export = 2, 3, {$^a + 2 if $^a.is-prime} … ∞;
    say @prime3.head(5); # (2 3 5 7 9)
}
{   
    say "==8==";
    # Mark A suggested this version, but it doesn't compile:
    # constant @prime4 is export = 2, 3, ->$n{$n + 2 if $n.is-prime} … ∞;
    # 
    ## ------> nstant @prime4 is export = 2, 3, ( -> $n⏏ + 2 if $n.is-prime) … ∞;
    ##
    ## (Raku's touches of whitespace sensitivity can trip up anyone)

    # This version works (pointy block abuse methinks, but if you like this, it's there):
    constant @prime4 is export = 2, 3, -> $n {$n + 2 if $n.is-prime} … ∞;

    say @prime4.head(5); # (2 3 5 7 9)
}
