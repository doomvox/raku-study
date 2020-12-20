#!/usr/bin/env perl6
# 
# stacko_question_raw_scalar_container_from_at_pos_positional.pl6            20 Dec 2020 
use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

# https://stackoverflow.com/questions/62968829/returning-a-raw-scalar-container-from-at-pos-method-rather-than-a-proxy-insta
# 
# I'm attempting to implement a class that 'does' Positional that
# also allows me to update its values by assigning to the result
# returned by the AT-POS method. Eventually, I was able to concoct
# the following class that works as intended:

class Testoidal does Positional
{
    has $.slot_1 is rw = 12;
    has $.slot_2 is rw = 24;

    method AT-POS(\position)
    {
        my $t = self;

        return-rw Proxy.new:

            FETCH => method ()
            {
                position % 2 ?? $t.slot_1 !! $t.slot_2
            },

            STORE => method ($v)
            {
                if position % 2
                {
                    $t.slot_1 = $v
                }
                else
                {
                    $t.slot_2 = $v
                }
            }
    }
}

my $test = Testoidal.new;

die unless $test[2] == 24;

die unless $test[5] == 12;


$test[7] = 120;

die unless $test[2] == 24;

die unless $test[5] == 120;


$test[10] = 240;

die unless $test[2] == 240;

die unless $test[5] == 120;

# Would it be possible to somehow (and: simply) return the
# container bound to $!slot_1 (or $!slot_2) inside the Testoidal
# class implementation?

# Before I discovered the use of Proxy instances I attempted to
# return (and return-rw) the result of expression position % 2 ??
# $!slot_1.VAR !! $!slot_2.VAR, because I'm under the impression
# that the VAR method gives me access to the underlying container,
# in the hope that I can simply return it. That didn't really work,
# and I do not understand why yet: I suspect it somehow gets
# coerced back to a value somehow?

# So in other words: is it possible to simplify my AT-POS
# implementation in this particular situation?

