#!/usr/bin/env perl6
# 
# set_difference_array_and_set.raku            21 Aug 2021 

use v6;

{
    my @monsters      = < godzilla grendel wormface blob >;
    my $cool_monsters = < godzilla ghidra mothera >.Set;

    say @monsters.WHAT;          # (Array)
    say $cool_monsters.WHAT;     # (Set)

    my $just_monsters = @monsters (-) $cool_monsters;
    say $just_monsters; # Set(blob grendel wormface)

}

{
    my %threat_level   = godzilla => 9, grendel => 3, wormface => 7, blob => 4;
    my %coolness_level = godzilla => 9, grendel => 2, wormface => 8, blob => 2;

    my %result = %threat_level.Mix (-) %coolness_level.Mix;
    say %result;
    # {blob => 2, grendel => 1, wormface => -1}

    my %result = %threat_level (-) %coolness_level;
    say %result;  # {}
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

