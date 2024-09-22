#!/usr/bin/env raku
# 
# dollar_paren_huh.raku            22 Sep 2024 

use v6;

use CoreHackers::Sourcery;

# {
#     say $a(5);
#     $a(5) = 3;

# # Variable '$a' is not declared.  Perhaps you forgot a 'sub' if this was
# # intended to be part of a signature?
# }


# {
#     say $(5); # 5
#     $(5) = 3;
#     # Cannot modify an immutable Int (5)
# }

{
    my $a;
    say $a(5);  # 5
    $a(5) = 3;
    # Cannot modify an immutable Int (5)
}


