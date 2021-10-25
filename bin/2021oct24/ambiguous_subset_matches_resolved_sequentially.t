use v6;
use Test;
use lib $?FILE.IO.parent(2).add("packages/Test-Helpers"); # finds Test::Util when run in dev tree
use lib "/home/doom/End/Cave/Raku/Wall/roast/packages/Test-Helpers"; # hack
use Test::Util;

plan 4;

## Imitating the style in:
##   /home/doom/End/Cave/Raku/Wall/roast/S12-subset/subtypes.t

# https://github.com/Raku/roast/issues/650
group-of 2 => 'ambiguous subset matches resolved sequentially' => {
  # note: godzilla is both a monster and a hero
  my @monsters  = < godzilla  gammera   ghidra    golem    >;
  my @heroes    = < godzilla  beowulf   ultraman  inframan >;
  subset Monster    of Str where { $_ eq any( @monsters ) };
  subset Hero       of Str where { $_ eq any( @heroes ) };

  group-of 2 => 'two multis' => {
    multi sub classify (Monster $name) {
        return "$name is a monster";
    }
    multi sub classify (Hero $name) {
        return "$name is a hero";
    }
    my $c1 = classify('ultraman');       
    my $c2 = classify('godzilla');     
    is( $c1, "ultraman is a hero",
        "Testing that the multi with the only subset match runs.");
    is( $c2, "godzilla is a monster",
        "Testing ambiguous case runs first multi that matches.");
   }
  group-of 2 => 'two multis reversed' => { 
    # here the same multis are defined in a different order
    multi sub classify (Hero $name) {
        return "$name is a hero";
    }
    multi sub classify (Monster $name) {
        return "$name is a monster";
    }
    my $c1 = classify('ultraman');       
    my $c2 = classify('godzilla');     
    is( $c1, "ultraman is a hero",
        "Testing that the multi with the only subset match runs.");
    is( $c2, "godzilla is a hero",
        "Testing ambiguous case runs first multi that matches.");
   }
}


