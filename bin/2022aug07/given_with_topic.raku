#!/usr/bin/env perl6
# 
# given_with_topic.raku            07 Aug 2022 

use v6;


given 32 {
    say $_;  # 32
    }


# given 32 {
#     $_ = 23;  # Cannot assign to an immutable value
#     say $_;
#     }

for 32 -> $_ is copy  {
    $_ = 23;  
    say $_;  # 23
}


given 32 -> $_ is copy  {
    $_ = 23;  
    say $_;  # 23
}

    # Bruce Gray cases: 
    # raku -e 'my @a = 1, 2; for @a { $_ += 40 }; say @a'
    # [41 42]
    # raku -e 'my @a = 1, 2; for @a -> $a { $a += 40 }; say @a'
    # Cannot assign to a readonly variable or a value 

{
    my @a = 1, 2;
    for @a { $_ += 40 };
    say @a;  # [41 42]
}

{
    my @a = 1, 2;
    for @a -> $a { $a += 40 };  # Cannot assign to a readonly variable or a value
    say @a
}
