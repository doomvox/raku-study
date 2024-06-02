#!/usr/bin/env raku
# 
# arrays_of_just_ints.raku            02 Jun 2024 

use v6;

# Bruce Gray

# Illustration:
# raku -e 'my Array[Int] $z = Array[Int].new(1,2,3); dd $z;'
#     Array[Int] $z = Array[Int].new(1, 2, 3)

# raku -e 'my Array[Int] $z = Array[Int].new(1,2,3); dd $z;'
#     ===SORRY!=== Error while compiling -e
#     An exception X::NotParametric+{X::Comp} occurred while parameterizing List:
#     List cannot be parameterized


my Array[Int] $z = Array[Int].new(1,2,3);
dd $z;
## Array[Int $z = Array[Int].new(1, 2, 3)

my List[Int] $z = List[Int].new(1,2,3);
dd $z;

#   ===SORRY!=== Error while compiling /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jun02/arrays_of_just_ints.raku
#   List cannot be parameterized
#   at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jun02/arrays_of_just_ints.raku:23
#   ------> my List[Int]⏏ $z = List[Int].new(1,2,3);



















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

