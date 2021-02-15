#!/usr/bin/env perl6
# 
# sets_etc-vot_lizmat_2020.pl6            14 Feb 2021 

## QuantHash? 
# Set
# Bag
# Mix
# SetHash
# BagHash
# MixHash

use v6;
# use method-menu;
use Object::Examine;  ## brings in Introspector role

my $s = set 2, 4, 6;
# say $s.^methods;

say '--0--';
$s does Introspector;
# say $s.menu.grep({/Set/});
my @m0 =  | $s.menu.split("\n");  # 85 items
my @m1 =  | $s.menu.split("\n").grep({/Set/});  # 32 items
.say for @m1;

# (ACCEPTS                   Set                      
# BUILDALL                  Set                      
# Baggy                     Set                      
# Bool                      Set                      
# Capture                   Set                      
# Int                       Set                      
# Mixy                      Set                      
# Num                       Set                      
# Numeric                   Set                      
# Real                      Set                      
# STORE                     Set                      
# Setty                     Set                      
# Str                       Set                      
# WHICH                     Set                      
# default                   Set                      
# elems                     Set                      
# fmt                       Set                      
# gist                      Set                      
# grab                      Set                      
# grabpairs                 Set                      
# iterator                  Set                      
# keyof                     Set                      
# maxpairs                  Set                      
# minpairs                  Set                      
# new                       Set                      
# new-from-pairs            Set                      
# of                        Set                      
# pick                      Set                      
# pickpairs                 Set                      
# raku                      Set                      
# roll                      Set                      
# total                     Set                      

say "===";
say $s.menu;
say "===";

say $s;      # Set(2 4 6)

say $s{2};   # True
say $s{'2'}; # False

say $s.values; # (True True True)    better than 1 1 1
say $s.keys;   # (2 4 6)

my $b = bag < a b c a a b >;
say $b; # Bag(a(3) b(2) c)
say "Bag values: ", $b.values;  # (2 3 1)
## a Bag is much like a Mix, except the values are integers

say '--1--';
$b does Introspector;
.say for $b.menu.split("\n").grep({/Bag/});
# say $b.menu.grep({/<<Set>>/});

my $m = mix < a b c a a b >;
say $m;
say $m<a>;
say $m<a>.WHAT;  # (Int)
say $m.values;

## Can't do this, it's a Mix, not a MixHash:
## $m<c>=2.5; # Cannot modify an immutable Int (1)

my $mh = (
    a => 2,
    b => 3.51,
    c => pi
    ).MixHash;

say $mh;  # MixHash(a(2) b(3.51) c(3.141592653589793))

say $mh<c>;        # 3.141592653589793
say $mh<c>.WHAT;   # (Num)

say $mh<a>;  # 2
say $mh<a>.WHAT;   # (Int)

say $mh<b>;        #  3.51
say $mh<b>.WHAT;   # (Rat)

say "--2--";

my @monsters1 = < godzilla grendel wormface blob >;
my @monsters2 = < godzilla mothera ghidora gammera golem rhodan >;

# my $result = set @monster2  (-) set @monsters1 ;

# Variable '@monster2' is not declared.  Did you mean any of these:
# '@monsters2', '@monsters1'?

my $sm1 = set @monsters1;
say $sm1;  # Set(blob godzilla grendel wormface)
my $sm2 = set @monsters2;
say $sm2;  # Set(gammera ghidora godzilla golem mothera rhodan)
my $diff = $sm1 (-) $sm2;
say $diff; # Set(blob grendel wormface)


# my $not_a_result = set(@monster2)  (-) set(@monsters1) ;
# Variable '@monster2' is not declared.  Did you mean any of these:
# '@monsters2', '@monsters1'?

# my $hm = @monster2.Set (-) @monsters1.Set ;
# say $hm;
# Variable '@monster2' is not declared.  Did you mean any of these:
# '@monsters2', '@monsters1'?
