#!/usr/bin/raku


sub mission( @a1, %h2 ) {
    say @a1;
    say %h2;
}

my @stuff = << alpha beta gamma >>;

my %fried = wuhn => 1, tew => 2, thuree => 3;

mission( @stuff, %fried );

# [alpha beta gamma]
# {tew => 2, thuree => 3, wuhn => 1}


# mission( %fried, %fried );
## Calling mission(Associative, Associative) will never work with declared signature (@a1, %h2)

# mission( @stuff, @stuff );
## Calling mission(Positional, Positional) will never work with declared signature (@a1, %h2)

# mission( tew => 2, thuree => 3, wuhn => 1 );
## Too few positionals passed; expected 2 arguments but got 0


