#!/usr/bin/env perl6
# 
# regex_interpolation_example_from_docs.pl6            07 Feb 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }



# https://docs.raku.org/language/regexes#Regex_interpolation

my $string   = 'Is this a regex or a string: 123\w+False$pattern1 ?';
my $pattern1 = 'string';
my $pattern2 = '\w+';
my $number   = 123;
my $regex    = /\w+/;
 
say $string.match: / 'string' /;                      #  [1] OUTPUT: «｢string｣␤» 
say $string.match: / $pattern1 /;                     #  [2] OUTPUT: «｢string｣␤» 
say $string.match: / $pattern2 /;                     #  [3] OUTPUT: «｢\w+｣␤» 
say $string.match: / $regex /;                        #  [4] OUTPUT: «｢Is｣␤» 
say $string.match: / $number /;                       #  [5] OUTPUT: «｢123｣␤»





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

