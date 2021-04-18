#!/usr/bin/env perl6
# 
# slurpy_array_param-lizmat_style.raku            18 Apr 2021 

use v6;

sub handle-array( @a, @b ) {
    # do something with @a
    say @a;
    say @b;
}

my @foo = "a" .. "z";
my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;

handle-array( @foo, @numbers );
# [a b c d e f g h i j k l m n o p q r s t u v w x y z]
# [wuhn tew thuree foah fahv sex sevhun]


sub slurp-an-array( *@values ) {  ## more perl5ish
    # do something with @values
    say @values;
}
slurp-an-array("foo", 42, "baz");
#  [foo 42 baz]

say "---";
slurp-an-array( @numbers );
# [wuhn tew thuree foah fahv sex sevhun]

slurp-an-array( @foo, @numbers );
# [a b c d e f g h i j k l m n o p q r s t u v w x y z wuhn tew thuree foah fahv sex sevhun]



say "---";
sub slurp-an-array-less-harder( **@values ) {  
    # do something with @values
    say @values;
    say "just one: ";
    say @values[1];
}
slurp-an-array-less-harder( @foo, @numbers );
## [[a b c d e f g h i j k l m n o p q r s t u v w x y z] [wuhn tew thuree foah fahv sex sevhun]]
## just one: 
## [wuhn tew thuree foah fahv sex sevhun]

say "---";
slurp-an-array-less-harder( | @foo, | @numbers );
# [a b c d e f g h i j k l m n o p q r s t u v w x y z wuhn tew thuree foah fahv sex sevhun]
# just one: 
# b

my @flat = ( | @foo, | @numbers );

# my @monsters = < godzilla mothera rhodan tingler wolfman dracula horta blob >;
# slurp-an-array-less-harder( @foo, @numbers, @monsters );

