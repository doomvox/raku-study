use v6;
use Test;
use lib $?FILE.IO.parent(2).add("packages/Test-Helpers"); # finds Test::Util when run in dev tree
use lib "/home/doom/End/Cave/Raku/Wall/roast/packages/Test-Helpers"; # hack
use Test::Util;

plan 91;

## Imitating the style in:
##   /home/doom/End/Cave/Raku/Wall/roast/S12-subset/subtypes.t


# https://github.com/Raku/roast/issues/650
group-of 6 => 'ambiguous subset matches resolved sequentially' => {

  my @monsters  = < godzilla  gammera   ghidra    golem    >;
  my @heroes    = < godzilla  beowulf   ultraman  inframan >;

  subset Monster    of Str where { $_ eq any( @monsters ) };
  subset Hero       of Str where { $_ eq any( @heroes ) };

  group-of 2 => 'subset' => {
    multi sub classify (Monster $name) {
        return "$name is a monster";
    }
    multi sub classify (Hero $name) {
        return "$name is a hero";
    }
    my $classification1 = classify('ultraman');       # 
    my $classification2 = classify('godzilla');     # 
    is( $classsification1, "ultraman is a hero",
        "Testing that the multi with the only subset match runs.");
    is( $classsification2, "godzilla is a monster",
        "Testing ambiguous case runs first multi that matches.");
   }
  group-of 2 => 'subset' => { 
    # here the same multis are defined in a different order
    multi sub classify (Hero $name) {
        return "$name is a hero";
    }
    multi sub classify (Monster $name) {
        return "$name is a monster";
    }
    my $classification1 = classify('ultraman');       # 
    my $classification2 = classify('godzilla');     # 
    is( $classsification1, "ultraman is a hero",
        "Testing that the multi with the only subset match runs.");
    is( $classsification2, "godzilla is a hero",
        "Testing ambiguous case runs first multi that matches.");
   }


    group-of 12 => 'my' => {
        $wanted = Nil;

        my $pos where &pos-match = 42;
        is-deeply $pos,    42, 'pos';
        is-deeply $wanted, 42, 'pos arg';
        throws-like { my $z where &neg-match = 73 },
            X::TypeCheck::Assignment, 'neg';
        is-deeply $wanted, 73, 'neg arg';

        my $pos-b where &pos-match-block = 42;
        is-deeply $pos-b,  42, 'pos block';
        is-deeply $wanted, 42, 'pos arg block';
        throws-like { my $z-b where &neg-match-block = 73 },
            X::TypeCheck::Assignment, 'neg block';
        is-deeply $wanted, 73, 'neg arg block';

        my $pos-w where &pos-match-wat = 42;
        is-deeply $pos-w,  42, 'pos Whatever';
        is-deeply $wanted, 42, 'pos arg Whatever';
        throws-like { my $z-w where &neg-match-wat = 73 },
            X::TypeCheck::Assignment, 'neg Whatever';
        is-deeply $wanted, 73,  'neg arg Whatever';
    }

}


