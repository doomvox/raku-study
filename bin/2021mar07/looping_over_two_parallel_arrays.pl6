#!/usr/bin/env perl6
# 
# looping_over_two_parallel_arrays.pl6            06 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

# And idiom Andrew Shitov wrote up:
#   https://andrewshitov.com/2020/03/16/a-couple-of-syntax-sweets-in-raku/

my @English = <Monday Tuesday Wednesday Thursday
               Friday Saturday Sunday>;
my @Latvian = <pirmdiena otrdiena trešdiena ceturtdiena 
               piektdiena sestdiena svētdiena>;

# A traditional way would be to use an index:
for 0 ..^ @English -> $index {
    say "@English[ $index ] => @Latvian[ $index ]";
}

# In Raku, you can use the Z meta-operator 

for @English Z @Latvian -> ($english, $latvian) {
    say "$english is $latvian in Latvian.";
}

my @alpha = <a b c>;
my @numeric = <1 2 3>;
my @zipped = @alpha Z @numeric;
say @zipped;  # [(a 1) (b 2) (c 3)]

for @zipped -> ($a, $n) {
    say "a: $a, n: $n";
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





# ===
# Author:  doom@kzsu.stanford.edu

