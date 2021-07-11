#!/usr/bin/env perl6
# 
# would_you_buy_this_bridge.raku            11 Jul 2021 

use v6;

{
    my $a;
    my $b;

    my $r = $a + $b;
    # Use of uninitialized value of type Any in numeric context
}

## I've seen messaging like this:

# Invocant of method 'Bridge' must be an object instance of type 'Int',
# not a type object of type 'Int'.  Did you forget a '.new'?

#            when '+' { 
#              $n = $d1 + $d2;
#            }


{
    my $a;
    my $b;

    my $ta  = $a.WHAT;
    my $tb  = $b.WHAT;

    my $r = $ta + $tb;
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

