#!/usr/bin/env perl6
# 
# oop-tutorial-part2.pl6            10 Jan 2021 

use v6;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

# Example taken from 
# https://medium.freecodecamp.org/a-short-overview-of-object-oriented-software-design-c7aa0a622c83 
class Hero {
    has @!inventory;
    has Str $.name;
    submethod BUILD( :$name, :@inventory ) {
        $!name = ">>> $name <<<";
        @!inventory = @inventory
    }

    method name {
        $!name = $!name.uc;
    }
 
    method act {
        return @!inventory.pick;
    }
}
my $hero = Hero.new(:name('Þor')
                    :inventory(['Mjölnir','Chariot','Bilskirnir']));

### say $hero.name("bozo the clown");  #Too many positionals passed; expected 1 argument but got 2 ((LTA, eh?))
### $hero.name = "bozo";  ## Cannot modify an immutable Str (>>> Þor <<<)  (( needs an 'is rw' ))

say $hero.name;
say $hero.act;

# Bilskirnir  (( what? ))
# Mjölnir     (( oh, it's picking randomly ))
