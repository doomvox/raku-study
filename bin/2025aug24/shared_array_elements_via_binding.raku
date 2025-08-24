#!/usr/bin/env raku
# 
# shared_array_elements_via_binding.raku            24 Aug 2025 

use v6;

{
    ## Two simple arrays with one element using a shared container:
    my @a = 0,1,3;
    my @b = <a b c>;

    @a[0] := @b[0];

    say @a, @b;
    # [a 1 3][a b c]

    @b[0] = 'Z';
    say @a, @b;
    # [Z 1 3][Z b c]

    @a[0] = '6';
    say @a, @b;
    # [6 1 3][6 b c]
}

say "===";
{
    ## Trying simple shaped arrays, uniaxial:
    my @a[3] = 0,1,3;
    my @b[3] = <a b c>;

    @a[0] := @b[0];

    say @a, @b;
    # [a 1 3][a b c]

    @b[0] = 'Z';
    say @a, @b;
    # [Z 1 3][Z b c]

    @a[0] = '6';
    say @a, @b;
    # [6 1 3][6 b c]
    }


say "===";
{
    ## Trying more complex shaped arrays, 2x2:
    my @a[2;2] = ((0,1);(2,3));
    my @b[2;2] = (<a b c>; <d e f>);

    @a[0,0] := @b[0,0];

    say @a, @b;
    # [a 1 3][a b c]

    @b[0,0] = 'Z';
    say @a, @b;
    # [Z 1 3][Z b c]

    @a[0,0] = '6';
    say @a, @b;
    # [6 1 3][6 b c]
    }
