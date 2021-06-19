#!/usr/bin/env perl6
# 
# deepmap.raku            19 Jun 2021 

use v6;

my  %g1   = ( 2015 => {  1 => { de => 177.00,
                                fr => 191.25, },
                         2 => { de => 74.00,
                                fr => 555.50, },
                      },
               2016 => { 1 => { de => 177.00,
                                fr => 191.25, },
                         2 => { de => 74.00,
                                fr => 555.50, },
                       },
            );

my %n1 = %g1.deepmap({ $_ * 2 });

say %g1{2016}(02}{'de'};
say %n1{2016}(02}{'de'};

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

