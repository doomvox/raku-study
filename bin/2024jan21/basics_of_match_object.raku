#!/usr/bin/env raku
# 
# basics_of_match_object.raku            21 Jan 2024 

use v6;

my $s = 'roses are red';
my $mo = $s ~~ s/roses/lilacs/;

dd $mo;
# Match $mo = Match.new(:orig("roses are red"), :from(0), :pos(5))

say "$mo";
# roses


{
    my $str = ($s ~~ S/roses/lilacs/);
    say $str; # True
}

{
    $_ = $s;
    my $str = S/roses/lilacs/;
    say $str; # lilacs are red
}

{
    $_ = $s;
    my $str = .subst( 'roses', 'lilacs' );
    say $str; # lilacs are red
}

{
    $s ~~ s/roses/lilacs/;
    my $str = $<>;
    say $str; # (Any)
}
