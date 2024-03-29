#!/usr/bin/env perl6
# 
# given_when_vs_passing_to_block.raku            24 Oct 2021 

use v6;

## Example in the docs:

# The given statement is often used alone:

given 42 { .say; .Numeric; }  # 42

# This is a lot more understandable than:
{ .say;
  .Numeric;
}(42);       # 42


sub stuffy($_){
    .say;
    .Numeric;
};

say stuffy(42);  # 42

 { .say; .Numeric; }(42);
 { say "$a + $b is {$a+$b}" }(|$_) 

sub mah_stuff {
    say "$^a + $^b is {$a+$b}" ;
}
mah_stuff( 42, 23 );   # 42 + 23 is 65


sub moes_stuff( $a, $b ) {
    say "$a + $b is {$a+$b}" ;
}
moes_stuff( 42, 23 );   # 42 + 23 is 65

# given !$_ { say $a, $b };




# ===
# Author:  doom@kzsu.stanford.edu

