sub task1a ( UInt $s, UInt $c --> UInt ) {

    sub all-but ( UInt $n --> UInt ) { +( $s.substr(0,$n) ~ $s.substr($n+1) ) }

    return $s.indices($c).map(&all-but).max;
}
sub task1b ( UInt $s, UInt $c --> UInt ) {
    my Regex $r = regex { ^ (.*) $c (.*) $ };

   return +$s.match($r, :exhaustive).map(*.list.join).max(+*);
}
my @task1_subs = :&task1a, :&task1b;
use Prime::Factor;
multi sub task2 ( UInt $s, 0 --> UInt ) { +prime-factors($s).squish }
multi sub task2 ( UInt $s, 1 --> UInt ) { +prime-factors($s)        }

my @tests1 = map { Map.new: <STR CHAR EXPECTED> Z=> +«.list },
    <  15456   5  1546 >,
    <   7332   3   732 >,
    <   2231   2   231 >,
    < 543251   5 54321 >,
    <   1921   1   921 >,
;
my @tests2 = map { Map.new: <NUMBER MODE EXPECTED> Z=> +«.list },
    < 100061 0 3 >,
    < 971088 0 3 >,
    <  63640 1 6 >,
    < 988841 1 2 >,
    < 211529 0 2 >
;
use Test; plan (+@tests1 * +@task1_subs) + +@tests2;
for @task1_subs -> ( :key($sub_name), :value(&task1) ) {
is task1(.<STR>,    .<CHAR>), .<EXPECTED>, "$sub_name: {.<STR>}, {.<CHAR>}" for @tests1; }
is task2(.<NUMBER>, .<MODE>), .<EXPECTED>, "task2: {.<NUMBER>}, {.<MODE>}" for @tests2;
