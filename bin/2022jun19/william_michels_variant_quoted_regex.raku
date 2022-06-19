#!/usr/bin/env perl6
# 
# william_michels_variant_quoted_regex.raku            19 Jun 2022 

use v6;



{
    my regex quoted { <?after \"> <-["]>+ <?before \"> }

    my $str = q{The "rain" in Spain sprains the brain.};
    say $str;
    # The "rain" in Spain sprains the brain.

    say $str ~~ m/<quoted>/;
    # ｢rain｣
    #  quoted => ｢rain｣


    # change the quoted string, but leave quotes alone (or so I thought...)
    say 
        $str ~~ s/<quoted>/refrain/;
    # ｢"rain"｣
    #   quoted => ｢rain｣



    say $str; 
    # The "refrain" in Spain sprains the brain.

    # The Michels solution works.


    say "===";
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

