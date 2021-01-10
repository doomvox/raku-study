#!/usr/bin/env perl6
# 
# oop-tutorial-part2.pl6            10 Jan 2021 

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

use v6;

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

# Example taken from 
# https://medium.freecodecamp.org/a-short-overview-of-object-oriented-software-design-c7aa0a622c83 
class Hero {
    has @!inventory;
    has Str $.name;
    submethod BUILD( :$name, :@inventory ) {
        $!name = $name;
        @!inventory = @inventory
    }
 
    method act {
        return @!inventory.pick;
    }
}
my $hero = Hero.new(:name('Þor'),
                    :inventory(['Mjölnir','Chariot','Bilskirnir']));
say $hero.act;






# ====
#  sheet of cheats, as of Thu  May 17, 2018  08:48  tango

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

