#!/usr/bin/env perl6
# 
# hyperism.pl6            26 Feb 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;


## I'm in a mood to reveiw hypers.  


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

my @c = @a.map({ .uc });
say @c;  # [A B C]



say "===";
## playing with .ord briefly:
say "a: " ~ "a".ord;   # a: 97
say "A: " ~ "A".ord;   # A: 65
say "»: " ~ "»".ord;   # »: 187
say ">: " ~ ">".ord;   # >: 62

# 2630;TRIGRAM FOR HEAVEN;So;0;ON;;;;;N;;;;;
say "☰: " ~ "☰".ord;  # ☰: 9776
printf "%x\n", "☰".ord;  # 2630

## Q: is there a more convenient way to convert to hex?


