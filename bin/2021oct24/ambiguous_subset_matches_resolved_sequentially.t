use v6;
use Test;
use lib $?FILE.IO.parent(2).add("packages/Test-Helpers");
use Test::Util;

plan 91;

## Imitating the style in:
##   /home/doom/End/Cave/Raku/Wall/roast/S12-subset/subtypes.t


# https://github.com/Raku/roast/issues/650
group-of 6 => 'ambiguous subset matches resolved sequentially' => {

  my @monsters  = < godzilla  gammera   ghidora   golem    >;
  my @heroes    = < godzilla  beowulf   ultraman  inframan >;

  subset Monster    of Str where { $_ eq any( @monsters ) };
  subset Hero       of Str where { $_ eq any( @heroes ) };

  group-of 12 => 'subset' => {
    multi sub classify (Monster $name) {
        return "$name is a monster";
    }
    multi sub classify (Hero $name) {
        return "$name is a hero";
    }
    my $classification1 = classify('ghidora');      # 
    my $classification1 = classify('godzilla');     # 

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


