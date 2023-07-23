#!/usr/bin/env raku
# 
# collisions_with_unsigiled_containing_callable.raku            23 Jul 2023 

use v6;

{
    my \s = 'alpha';
    sub s {
        return 'beta';
    }
    say s;   # alpha
    say s(); # beta
}

{
    my \s = 'alpha';
    my sub s {
        return 'beta';
    }
    say s;   # alpha
    say s(); # beta
}


{
    my \s = sub { 'alpha' };
    my sub s {
        return 'beta';
    }
    say s;     # sub { }
    say s();   # beta
    say s();   # beta

    say "---";
    say s.();  # alpha
}

say "===";
{
    my sub s {
        return 'beta';
    }

    say s(); # beta

    # say s.(); # beta
    # ## No such method 'CALL-ME' for invocant of type 'Str'
}
