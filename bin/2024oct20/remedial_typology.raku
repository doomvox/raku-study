#!/usr/bin/env raku
# 
# remedial_typology.raku            20 Oct 2024 

use v6;

# https://github.com/Raku/problem-solving/issues/426

# sub foo(Int @a) { dd @a; }
# foo [1, 2, 3];

# {
#     sub foo(Int @a) {
#         dd @a;
#     }

#     foo [1, 2, 3];

#     # Type check failed in binding to parameter '@a'; expected Positional[Int] but got Array ([1, 2, 3])
#     #   in sub foo at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/remedial_typology.raku line 13
#     #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/remedial_typology.raku line 17
# } 


{
    sub foo( @a ) {
        dd @a;
    }

    foo [1, 2, 3];
    # [1, 2, 3]
}




{
    sub foo( Int @a ) {
        dd @a;
    }

    my Array[Int] $a = [1, 2, 3];

    foo $a;

    # Type check failed in assignment to $a; expected Array[Int] but got Array ([1, 2, 3])
    #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/remedial_typology.raku line 42

}
