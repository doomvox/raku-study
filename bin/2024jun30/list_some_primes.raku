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
        take $_ if .is_prime;
       }
}


# ====
#  sheet of cheats

# A unicode paste board:
# «
# »
# π
# 𝑒

# use DBIish;
# my $dbh = DBIish.connect("Pg", database => 'doom', :user<doom>, :port<5434>);

# my $sth = $dbh.prepare(q:to/STATEMENT/);
#     SELECT * FROM funked_up
# STATEMENT

# $sth.execute();
# my @rows = $sth.allrows();



# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

