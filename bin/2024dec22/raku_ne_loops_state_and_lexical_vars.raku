#!/usr/bin/env raku
# 
# raku_ne_loops_state_and_lexical_vars.raku            22 Dec 2024 



use v6;

for "dat/alpha.data".IO.lines -> $line {
    state $c = 10;
    $c--;
    say $c;
}

say "===";
for 0 .. 3 {
    state $c = 10;
    $c--;
    say $c;
}
say "===";

# raku -e 'for 0 .. 3 { state $c = 10; $c--; say $c; }'
# 9
# 8
# 7
# 6



# raku -e 'for "dat/alpha.data".IO.lines -> $line { state $c = 10; $c--; say $c; }'
# 9
# 8
# 7
# 6
# 5


# raku -ne '{ state $c = 10; $c--; say $c; }'  dat/alpha.data
# 9
# 9
# 9
# 9
# 9

# raku -ne '{ my $c = 10; $c--; say $c; }'  dat/alpha.data
# 9
# 9
# 9
# 9
# 9


## state with -ne is NG, BEGIN my works
# raku -ne 'BEGIN my $c = 10; $c--; say $c;'  dat/alpha.data
# 9
# 8
# 7
# 6
# 5



# raku -ne 'state $c = 10; $c--; say $c;'  dat/alpha.data
# -1
# -2
# -3
# -4
# -5
