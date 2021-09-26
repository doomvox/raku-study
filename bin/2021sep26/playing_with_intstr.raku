#!/usr/bin/env perl6
# 
# playing_with_intstr.raku            26 Sep 2021 

use v6;

## NOTES
## Note: I can never remember what IntStrs are *for* exactly.
##       dim memory:
##         I want them to be something that accepts integers in either string or integer form
##         they actually "go the other way" (emit Str or Int depending on use?)
##         the raku version of perl's dualvars?

## https://docs.raku.org/type/IntStr
##
## Inherit from Allomorph

## my $int-str = <42>;
## Huh?

## Better:
# my $f = IntStr.new(42, "forty two");
# say +$f; # OUTPUT: «42␤» 
# say ~$f; # OUTPUT: «"forty two"␤»







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

