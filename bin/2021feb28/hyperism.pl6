#!/usr/bin/env perl6
# 
# hyperism.pl6            26 Feb 2021 

use v6;

## Reviewing hypers:
##   with hypers N inputs produce N outputs (always, or just typically?)
{
    my @monsters = < garuda blob golem >;
    say @monsters.uc;    # GARUDA BLOB GOLEM
    say @monsters>>.uc;  # [GARUDA BLOB GOLEM]

    my @nm1 = @monsters.uc;    ## entire list assigned to first element
    my @nm2 = @monsters>>.uc;  ## each item assigned to an element
    say @nm1.WHAT, ' ', @nm2.WHAT;   # (Array) (Array)
    say @nm1;     # [GARUDA BLOB GOLEM]   ## Note: dumping with say is ambiguous
    say @nm1[0];  # GARUDA BLOB GOLEM
    say @nm2;     # [GARUDA BLOB GOLEM]
    say @nm2[0];  # GARUDA
}

say "---";
# https://docs.raku.org/language/operators#index-entry-hyper_method_call_operator

# methodop ». / methodop >>.

# This is the hyper method call operator. Will call a method on
# all elements of a List out of order and return the list of
# return values in order.

my @a = <a b c>;
my @b = @a».uc; 
say @b;  #  [A B C]

@b>>.say;
## output here is in-order, but this is not guaranteed
# A
# B
# C

## I know what they're getting at, but this really weird phrasing:
    # The first parameter of a method is the invocant. 
    # So we can pretend to have a method call with a sub that got a good first positional argument. 

sub foo( Str:D $c ){ $c.uc x 2 };
say @a».&foo;  # [AA BB CC]

# # Blocks have an implicit positional arguments that lands in $_. 
# # The latter can be omitted for method calls.  (( weird: something basic *explained* ))
say @a».&{ $_ ~ .uc ~ $_ };  # [aAa bBb cCc]

## These are some very intriguing remarks that tell more than I want
## to know and explain little:

   # Hyper method calls may appear to be the same as doing a map
   # call, however along with being a hint to the compiler that it
   # can parallelize the call, the behavior is also affected by
   # nodality of the method being invoked, depending on which either
   # nodemap or deepmap semantics are used to perform the call.

   # The nodality is checked by looking up whether the Callable
   # provides nodal method. If the hyper is applied to a method,
   # that Callable is that method name, looked up on List type; if
   # the hyper is applied to a routine (e.g. ».&foo), that routine
   # functions as that Callable. If the Callable is determined to
   # provide nodal method, nodemap semantics are used to perform the
   # hyper call, otherwise duckmap semantics are used.


## I'm not seeing any unexpected behavior with map:
say  @a.map({ .uc }); # [A B C]
say  @a.map({ .&{ $_ ~ .uc ~ $_ } }); # (aAa bBb cCc)
say  @a.map({  $_ ~ .uc ~ $_  });     # (aAa bBb cCc)

say "===";
## playing with .ord briefly:
say "a: " ~ "a".ord;   # a: 97
say "A: " ~ "A".ord;   # A: 65

# 00BB;RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK;Pf;0;ON;;;;;Y;RIGHT POINTING GUILLEMET;;;;
say "»: " ~ "»".ord;   # »: 187
say ">: " ~ ">".ord;   # >: 62

# 2630;TRIGRAM FOR HEAVEN;So;0;ON;;;;;N;;;;;
say "☰: " ~ "☰".ord;  # ☰: 9776
printf "%x\n", "☰".ord;  # 2630

say chr(9776); # ☰
say "\x[2630]"; # ☰

## Q: look for more convenient ways to do hex conversion


{
    my @n = 2, 3, 4;
    my @m = 1, 2, 3;
    my @r = @n [+] @m;
    say @r;  # [6]
}
