#!/usr/bin/env perl6
# 
# reductionism.pl6            26 Feb 2021 

use v6;

# https://docs.raku.org/language/operators#Reduction_operators
# Reduction operators

# Any infix operator (except for non-associating operators) can
# be surrounded by square brackets in term position to create a
# list operator that reduces using that operation.

{
    say [+] 1, 2, 3;      # 1 + 2 + 3 = 6 
    my @a = (5, 6);
    say [*] @a;           # 5 * 6 = 30
}

# Reduction operators have the same associativity as the operators they are based on.

# say [-] 4, 3, 2;      # 4-3-2 = (4-3)-2 = -1 
# say [**] 4, 3, 2;     # 4**3**2 = 4**(3**2) = 262144

# Applying [+] to a single element will return that element

# say [+] 42;           # OUTPUT: «42␤» 



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

