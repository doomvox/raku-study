#!/usr/bin/env perl6
# 
# william_michels_raku_booleans.pl6            12 Sep 2021 

use v6;

> my $var = False;
False
> say $var;
False
> say ++$var
True
> say --$var
False

> say $var.Int
0
> say $var.Int + 1
1
> say ($var.Int + 1).Bool
True

> say ++$var.Int
Cannot resolve caller prefix:<++>(Int:D); the following candidates
match the type but require mutable arguments:
    (Mu:D $a is rw)
    (Int:D $a is rw --> Int:D)

The following do not match for other reasons:
    (Bool $a is rw)
    (Mu:U $a is rw)
    (Num:D $a is rw)
    (Num:U $a is rw)
    (int $a is rw --> int)
    (num $a is rw --> num)
  in block <unit> at <unknown file> line 1

> exit




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

