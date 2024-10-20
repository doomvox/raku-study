#!/usr/bin/env raku
# 
# array_int_and_binding.raku            20 Oct 2024 

use v6;

# {
#     my Int @n = 1, 2, 3;

#     my @m = 5, 6, 7;

#     @n := @m;

#     # Type check failed in binding; expected Positional[Int] but got Array ([5, 6, 7])
#     #   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024oct20/array_int_and_binding.raku line 12

# }


{
    my Int @n = 1, 2, 3;

    my @m = 5, 6, 7;

    @m := @n;
 
    say @m;  # [1 2 3]
}


{
    my Int @n = 1, 2, 3;

    my Cool @m = 5, 6, 7;  # Works as well as Any, Cool is up above Int in hierarchy

    @m := @n;
 
    say @m;  # [1 2 3]
}




## Nice enough, this works pretty well, interesting the error message references @n

# { 
#     my Int @n = 1, 2, 3;

#     my @m = 5, 6, 7;

#     @m := @n;
 
#     say @m;  # [1 2 3]
#     @m.push('a');       # Type check failed for an element of @n; expected Int but got Str ("a")
#     say @m;  # [1 2 3]

# }


# {
#     my Int @n = 1, 2, 3;
#     @n.push('a');       # Type check failed for an element of @n; expected Int but got Str ("a")
# }
