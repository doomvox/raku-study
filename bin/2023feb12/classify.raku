#!/usr/bin/env perl6
# 
# classify.raku            12 Feb 2023 

use v6;

## simple task: copy values into arrays @quant, @name

my @initial_data = ( { quant => 1, name => 'alpha', },
                     { quant => 2, name => 'beta',  },
                     { quant => 3, name => 'gamma', },
                     { quant => 4, name => 'delta', }, );


{
    my (@quant, @name);
    @initial_data.map( { @quant.push($_<quant>), @name.push($_<name>) });
    say 'quant:', @quant, ' name: ', @name;
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

