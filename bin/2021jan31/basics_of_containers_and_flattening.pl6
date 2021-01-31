#!/usr/bin/env perl6
# 
# basics_of_containers_and_flattening.pl6            31 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

my @monsters = < garuda blob golem mothera godzilla tingler >;

my @new = @monsters;
say @new;  # [garuda blob golem mothera godzilla tingler]

my @newer = @new;
say @newer;  # 

my $new = @monsters;
say $new;
my $newer = $new;
say $newer;

dd $newer;
## Array $newer = $["garuda", "blob", "golem", "mothera", "godzilla", "tingler"]

put $newer.raku;
## $["garuda", "blob", "golem", "mothera", "godzilla", "tingler"]

my %h = @monsters;  # list of 6 elements
say %h;  ## {garuda => blob, godzilla => tingler, golem => mothera}
## that's remarkably p5ish behavior that I didn't expect


my @a = <a a a>;
my @b = <b b b>;
my @c = <c c c>;

my @a_of_a = @a, @b, @c;
say @a_of_a;
# [[a a a] [b b b] [c c c]]
say @a_of_a[1];
# [b b b]

my @copy_a = @a;
say @copy_a; # [a a a]
## The behavior of *single* assignments flattens/listifies,
## but multiple ones don't.


### 

my %threat_lev = (
    garuda   => 6,
    blob     => 3,
    golem    => 2,
    mothera  => 5,
    godzilla => 8,
    tingler  => 3,
);


my %new = %threat_lev;
say %new;
# {blob => 3, garuda => 6, godzilla => 8, golem => 2, mothera => 5, tingler => 3}
