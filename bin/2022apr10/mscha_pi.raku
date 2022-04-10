#!/usr/bin/env perl6
# 
# mscha_pi.raku            10 Apr 2022 

# https://stackoverflow.com/questions/71764654/is-there-a-way-to-automatically-use-fatrats-in-raku

use v6;

unit sub MAIN(Int $decimals = 1_000);

sub atan_repr(Int $n, Int :$decimals)
{
    my $x = $n;
    my $n2 = $n²;
    my $sign = 1;
    my $limit = 10**($decimals+2);
    my $result = FatRat.new(1, $x);
    for 3,5...* -> $i {
        $x ×= $n2;
        $sign ×= -1;
        $result += FatRat.new($sign, $i × $x);
        last if $x ≥ $limit;
    }

    return $result;
}

my $π = 4 × (4 × atan_repr(5, :$decimals) - atan_repr(239, :$decimals));
my $π-str = ~$π;      # Make sure we don't do string conversion over and over

print '3. ';
for 0,5...^$decimals -> $d {
    print "    # $d\n   " if $d && $d %% 50;
    print $π-str.substr(2+$d,5), ' ';
}
print "    # $decimals" if $decimals && $decimals %% 50;
say '';
