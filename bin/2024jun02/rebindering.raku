#!/usr/bin/env raku
# 
# rebindering.raku            02 Jun 2024 

use v6;

{
  my $a := 7;
  $a := 9;

  say $a;  ## 9
}

{ my $b := 9;
  my $b := 3;
  say $b; 

# Potential difficulties:
#     Redeclaration of symbol '$b'.
#     at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024jun02/rebindering.raku:17


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

