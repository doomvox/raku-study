## run with perl6 or raku, like:
##   perl6 01-PlusMine.t
use Test;
use PlusMine;  

is( plusmine_flip( minus ), plus,  "plusmine_flip: input minus output plus");
is( plusmine_flip( plus ),  minus, "plusmine_flip: input plus output minus");

is( 2 ± 3, 5,  "First:   2 ± 3 = 5");
is( 2 ± 3, -1, "Second:  2 ± 3 = -1");
is( 2 ± 3, 5,  "Third:   2 ± 3 = 5");
plusmine_reset();
is( 2 ± 3, 5,  "Fourth:  2 ± 3 = 5,  after reset");
is( 2 ± 3, -1, "Fifth:   2 ± 3 = -1");
is( 2 ± 3, 5,  "Sixth:   2 ± 3 = 5");
plus±;
is( 2 ± 3, 5,  "Seventh: 2 ± 3 = 5, after postfix reset");
is( 2 ± 3, -1, "Eight:  2 ± 3 = -1");
minus±;
is( 2 ± 3, -1, "Nine:  2 ± 3 = -1, after postfix reset to minus");
is( 7 ± 5, 12, "Alpha: 7 ± 5 = 12");
is( 5 ± 7, -2, "Beta:  5 ± 7 = -2");

is( 2.5 ± 1.3, 3.8, "Gamma: 2.5 ± 1.3 = 3.8");

is( 3/2 ± 1/3, 1.1666666666666667, "Delta: 3/2 ± 1/3 = 1.1666666666666667");

plusmine_reset();
is( 2 ± 3,  5, "AAA: 2 ± 3 = 5, after reset");
is( 2 ± 3, -1, "BBB: 2 ± 3 = -1");
is( 7 ± 5, 12, "CCC: 7 ± 5 = 12");
is( 5 ± 7, -2, "DDD: 5 ± 7 = -2");

dies-ok( { 'I' ± 'U' }, "Non-numeric string dies with operator ± " );  

is( 13 ± 13, 26, "13 ± 13 = 26" );

# reseting to minus (not plus)
plusmine_reset( minus );

is( 4 ± 3, 1, "  i:  4 ± 3 = 1");
is( 4 ± 3, 7, " ii:  4 ± 3 = 7");
is( 4 ± 3, 1, "iii:  4 ± 3 = 1");
is( 4 ± 3, 7, " iv:  4 ± 3 = 7");


