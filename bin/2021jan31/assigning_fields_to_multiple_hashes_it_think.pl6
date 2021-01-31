#!/usr/bin/env perl6
# 
# assigning_fields_to_multiple_hashes_it_think.pl6            31 Jan 2021 

use v6;

## Experimenting with clearing fields in hashes.

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

## bruce gray idea
# for %!hash1, %!hash2, %!hash3 <-> %h { %h = Empty }

## richard hainsworth:
my %h = <a v c> Z=> 1..*;
# {a => 1, c => 3, v => 2}
my %g = <uo e ek > Z=> 10..*;
# {e => 11, ek => 12, uo => 10}
my %j = <oo jj yy> Z=> 22 .. *;
# {jj => 23, oo => 22, yy => 24}
# for %h, %g, %j <-> %hh {
#     %hh = Empty
# }

# # CAUGHT: Parameter '%hh' expected a writable container, but got Hash value
# # CAUGHT: Parameter '%hh' expected a writable container, but got Hash value
# # CAUGHT: Parameter '%hh' expected a writable container, but got Hash value

## Richard saw this in repl:
# Parameter '%hh' expects a writable container (variable) as an argument,
# but got '{a => 1, c => 3, v => 2}' (Hash) as a value without a
# container.
# in block <unit> at <unknown file> line 4 

for %h, %g, %j -> %hh {
    say "loop count: ", $++;
    %hh = Empty
}

say %h; # {}
say %g; # {}
say %j; # {}

# bruce gray points out this fails:
for %h, %g, %j <-> %hh { say %hh }; 
## CAUGHT: Parameter '%hh' expected a writable container, but got Hash value


# It's telling you you're trying to make something rw that's *already* rw.
# which is, like, not intuitive.  If you're talking DWIM, it's clear what you mean.

# Still: interesting point that if you're passing containers, you've got rw
# by definition, so looping over hashes like this, you've got rw.

# Interesting there's yet another bit of weirdness connected to containers.
