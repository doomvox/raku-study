#!/usr/bin/env perl6
# 
# zen_slice.pl6            06 Dec 2020 


use v6;

my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;

say @numbers[3];       #  foah
say @numbers[3..5];    #  (foah fahv sex)
say @numbers[];        #  [wuhn tew thuree foah fahv sex sevhun]
say @numbers;          #  [wuhn tew thuree foah fahv sex sevhun]

say | @numbers;        #  wuhntewthureefoahfahvsexsevhun

say @numbers<>;        #  [wuhn tew thuree foah fahv sex sevhun]

my @rabbits  = < bugs peter easter >;

my @new1 = @numbers, @rabbits;
my @new2 = @numbers<>, @rabbits<>;

say "new1: ", @new1;  # new1: [[wuhn tew thuree foah fahv sex sevhun] [bugs peter easter]]
say "new2: ", @new2;  # new2: [[wuhn tew thuree foah fahv sex sevhun] [bugs peter easter]]

my @new3 = @numbers[], @rabbits[];
say "new3: ", @new3;  # new3: [[wuhn tew thuree foah fahv sex sevhun] [bugs peter easter]]

my @new4 = | @numbers, | @rabbits;
say "new4: ", @new4;   # new4: [wuhn tew thuree foah fahv sex sevhun bugs peter easter]

my @new5 = @numbers.flat, @rabbits.flat;
say "new5: ", @new5;  
# new5: [(wuhn tew thuree foah fahv sex sevhun) (bugs peter easter)]

dd @new5;
# Array @new5 = [("wuhn", "tew", "thuree", "foah", "fahv", "sex", "sevhun").Seq, ("bugs", "peter", "easter").Seq]

dd @new5[0];
# Seq @new5 = $(("wuhn", "tew", "thuree", "foah", "fahv", "sex", "sevhun").Seq)

say "my string here is @new5";       # my string here is @new5
say "my string here is @new5<>";     # my string here is wuhn tew thuree foah fahv sex sevhun bugs peter easter
say "my string here is { @new5 } ";  # my string here is wuhn tew thuree foah fahv sex sevhun bugs peter easter 


@numbers<> = @new5;
say @numbers;  #  [(wuhn tew thuree foah fahv sex sevhun) (bugs peter easter)]
# hm...?

{
    my @a = <one two three>;
    @a = | @a, 'four';
    say @a;  #  [one two three four]
}
{
    my @a = <one two three>;    
    | @a = | @a, 'four';
    say @a;  #  [one two three]
}
