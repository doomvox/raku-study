#!/usr/bin/env perl6
# 
# playing_with_intstr.raku            26 Sep 2021 

use v6;

## NOTES

## Note: I can never remember how IntStrs work:

##       They're *like* perl's "dualvars":
##       they have two values for different contexts: a Str or an Int
##       you can't use them flexibly the other way:
##       I always want them to be something that either an integer or an integer in string form

## https://docs.raku.org/type/IntStr

## https://docs.raku.org/type/Allomorph

{
    ## What is this notation?  A list of one element?  No:
    dd <42>;
    ## IntStr.new(42, "42")
    my $a = <42>;
    ## IntStr $a = IntStr.new(42, "42")
    dd $a;
    # IntStr $int-str = IntStr.new(42, "42")
    my $int-str = <42>;
    dd $int-str;

    ## See:
    ## https://docs.raku.org/language/quoting#Word_quoting:_%3C_%3E

    ## This is a perfectly deranged feature of word quoting I've never
    ## stumbled over (if I had, I'd be pretty annoyed):

    #     say <a b c> eqv ('a', 'b', 'c');   # OUTPUT: «True␤»
    #     say <a b 42> eqv ('a', 'b', '42'); # OUTPUT: «False␤», the 42 became an IntStr allomorph
    #     say < 42 > ~~ Int; # OUTPUT: «True␤»
    #     say < 42 > ~~ Str; # OUTPUT: «True␤»
}

## asides within asides
{  # can you shut off this behavior with a qw?
    say "---";
    my @items =  <a b 42>;
    dd @items[2];  # IntStr @items = IntStr.new(42, "42")

    my @stuff = qw<a b 42>;
    dd @stuff[2];  # Str @stuff = "42"
    ## YES: conclusion, using <> quoting is a mugs game, qw<> is less surprising
}

{ 
    ## Makes more sense to me:
    say "===";
    my $f = IntStr.new(9, "nine");
    say +$f; # 9
    say ~$f; # nine
}


# {
#     my IntStr(Cool) $n;
#     $n = 42;
#     dd $n;

# # Coercion 'IntStr(Cool)' is insufficiently type-like to qualify a
# # variable.  Did you mean 'class'?

# }





# ===
# Author:  doom@kzsu.stanford.edu

