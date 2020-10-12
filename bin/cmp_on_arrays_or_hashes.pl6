#!/usr/bin/env perl6
# 
# cmp_on_arrays_or_hashes.pl6            11 Oct 2020 


use v6;

## What does cmp do on arrays or hashes?
## Answer: it stringifies, essentially calling .Str on them.
## and <=> is like calling .Int on them first:

my @m = < blob garuda wolfman >;
my @h = < perseus thor spiderman >;
say @m cmp @h;  # Less

say @m.Str;  # blob garuda wolfman
say @h.Str;  # perseus thor spiderman

@m = < wolfman blob garuda >;
say @m cmp @h;  # More

my %m_level = ( blob => 6, garuda => 8, wolfman => 5 );
my %h_level = ( perseus => 6, thor => 8, spiderman => 7 );
say %m_level cmp %h_level;
# Less

say %m_level.Str;
say %h_level.Str;

# blob	6
# garuda	8
# wolfman	5

# perseus	6
# spiderman	7
# thor	8

say %m_level == %h_level;  # True 
say %m_level.Num; # 3  the count of the number of pairs in the hash
say %h_level.Num; # 3

