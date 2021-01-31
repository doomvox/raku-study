#!/usr/bin/env perl6
# 
# basics_of_containers_and_flattening.pl6            31 Jan 2021 

use v6;

## Make errors into warnings
#### CATCH { default { say "CAUGHT: ", .Str; .resume } }

my @monsters = < garuda blob golem mothera godzilla tingler >;

my $not_an_array_or_is_it = @monsters;
say $not_an_array_or_is_it;  #  [garuda blob golem mothera godzilla tingler]

say $not_an_array_or_is_it[3];   # mothera
$not_an_array_or_is_it[3] = 'doris_day';
say $not_an_array_or_is_it[3];   # doris_day
say $not_an_array_or_is_it.WHAT; # (Array)
say $not_an_array_or_is_it;
# [garuda blob golem doris_day godzilla tingler]

my $list = ('alpha', 'beta', 'gamma');
say $list.WHAT; # (List)
# $list[1] = 'hey there';
## CAUGHT: Cannot modify an immutable List ((alpha beta gamma))

my $alpha = 'alpha';
my $beta = 'beta';
my $gamma = 'gamma';

my $scalar_array_kind_of = $alpha, $beta, $gamma;  ## completely ignores these: $beta, $gamma; 
# Useless use of $beta in sink context (line 31)
# Useless use of $gamma in sink context (line 31)

say $scalar_array_kind_of.WHAT;  # (Str)
say $scalar_array_kind_of; # alpha

my $array_kind_of_not_scalar_this_time_i_hope = ($alpha, $beta, $gamma);
say $array_kind_of_not_scalar_this_time_i_hope; # (alpha beta gamma)
say $array_kind_of_not_scalar_this_time_i_hope.WHAT; # (List)


my ($one, $two, $three) = @monsters;
say "one: $one";
say "two: $two";
## say :$three;
# CAUGHT: Unexpected named argument 'three' passed
# This exception is not resumable

say [:$three];   # [three => golem]

say [:$one  :$two  :$three];   
# [one => garuda two => blob three => golem]

say [:$one,  :$two,  :$three];   

for @monsters -> $one, $two, $three {
    say [:$one,  :$two,  :$three];   
}
# [one => garuda two => blob three => golem]
# [one => doris_day two => godzilla three => tingler]

{ my @monsters = < garuda blob golem mothera godzilla tingler jingle jangle jongle juggler>;
  for @monsters -> $one, $two?, $three='' {
      say [:$one,  :$two,  :$three];   
      # ...
      # [one => juggler two => (Mu) three => ]
  }
}

say "xxx";
my @new = @monsters;
say @new;  # [garuda blob golem mothera godzilla tingler]

my @newer = @new;  # listifies (not quite "flattening")
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

my %effects_cost = (
    garuda   => 8,
    blob     => 2,
    golem    => 1,
    mothera  => 6,
    godzilla => 6,
    tingler  => 3,
);

my %new = %threat_lev;
say %new;
# {blob => 3, garuda => 6, godzilla => 8, golem => 2, mothera => 5, tingler => 3}

my %stuff = %threat_lev, %effects_cost;
dd %stuff;
# Hash %stuff = {:blob(2), :garuda(8), :godzilla(6), :golem(1), :mothera(6), :tingler(3)}

use Test;
is-deeply( %stuff, %effects_cost, "The second hash assign overrides the first");

my %summary = threat_lev => %threat_lev , effects_cost => %effects_cost;
dd %summary;
## Hash %summary = {:effects_cost(${:blob(2), :garuda(8), :godzilla(6), :golem(1), :mothera(6), :tingler(3)}), :threat_lev(${:blob(3), :garuda(6), :godzilla(8), :golem(2), :mothera(5), :tingler(3)})}

say %summary{'effects_cost'};
## {blob => 2, garuda => 8, godzilla => 6, golem => 1, mothera => 6, tingler => 3}

say %summary{'effects_cost'}{'garuda'};  ## 8


my %alternate_summary = :%threat_lev , :%effects_cost;
dd %alternate_summary;
# Hash %alternate_summary = {:effects_cost(${:blob(2), :garuda(8), :godzilla(6), :golem(1), :mothera(6), :tingler(3)}), :threat_lev(${:blob(3), :garuda(6), :godzilla(8), :golem(2), :mothera(5), :tingler(3)})}

say %alternate_summary{'effects_cost'}{'garuda'};  ## 8

{
    say "===";
    my %h_ola = { a => 1, b => 2, c => 3 };
    say %h_ola; # {a => 1, b => 2, c => 3}
    my %misc = { hm => 0, ho => 0, heh => 0 };

    my %another_misc = %misc;
    say %another_misc;

    %h_ola{'misc'} = %misc;
    say %h_ola;
    # {a => 1, b => 2, c => 3, misc => {heh => 0, hm => 0, ho => 0}}

    my $thing = %h_ola{'misc'};
    say $thing;
    # {heh => 0, hm => 0, ho => 0}

    my %h2 = %h_ola{'misc'};
    say %h2;
}
