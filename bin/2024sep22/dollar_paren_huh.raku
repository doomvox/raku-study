#!/usr/bin/env raku
# 
# dollar_paren_huh.raku            22 Sep 2024 

use v6;

# {
#     say $a(5);
#     $a(5) = 3;

# # Variable '$a' is not declared.  Perhaps you forgot a 'sub' if this was
# # intended to be part of a signature?
# }

{
    my $a;
    say $a(5);
    $a(5) = 3;

# Variable '$a' is not declared.  Perhaps you forgot a 'sub' if this was
# intended to be part of a signature?
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

