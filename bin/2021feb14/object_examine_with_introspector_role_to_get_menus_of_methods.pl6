#!/usr/bin/env perl6
# 
# object_examine_with_introspector_role_to_get_menus_of_methods.pl6            15 Feb 2021 

use v6;

# I wrote an Object::Examine module that provides a role named Introspector
# with mainly adds a method named "menu" that does a more elaborate listing
# of available methods on an object than .^methods does.

# Here, we're looking at some of the methods availble on Set objects

use Object::Examine;  ## brings in Introspector role
my $s = set 2, 4, 6;

say $s.^methods;
# (iterator of new-from-pairs default elems total grab grabpairs pick pickpairs roll keyof STORE Int Num Numeric Real Capture fmt Setty Baggy Mixy WHICH Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new new Method+{is-nodal}.new Method+{is-nodal}.new minpairs maxpairs Bool Method+{is-nodal}.new Method+{is-nodal}.new ACCEPTS Str gist raku Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new BUILDALL)
## Issues with ^methods listings:
## (1) often includes lots of cruft: Method+{is-nodal}.new
## (2) single line, unsorted output is hard to read

$s does Introspector;
my @m0 =  | $s.menu.split("\n");  # 85 items
my @m1 =  | $s.menu.split("\n").grep({/Set/});  # 32 items
.say for @m1;

# Issues with menu
# (1) menu returns a big chunk of text instead of a list of lines (a BUG I think TODO FIXME)
# (2) the listings are fairly long, here I'm constraining them to methods defined (or redefined)
#     in Set.

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
## The full list from menu
say $s.menu;
# ACCEPTS                   Set                      
# BIND-POS                  Any                      
# BUILDALL                  Set                      
# BUILD_LEAST_DERIVED       Mu                       
# Baggy                     Set                      
# Bool                      Set                      
# CREATE                    Mu                       
# Capture                   Set                      
# Int                       Set                      
# Mixy                      Set                      
# Num                       Set                      
# Numeric                   Set                      
# Real                      Set                      
# STORE                     Set                      
# Setty                     Set                      
# Str                       Set                      
# Stringy                   Mu                       
# WHERE                     Mu                       
# WHICH                     Set                      
# WHY                       Mu                       
# ZEN-KEY                   Any                      
# ZEN-POS                   Any                      
# bless                     Mu                       
# cache                     Any                      
# can                       Mu                       
# clone                     Mu                       
# collate                   Any                      
# default                   Set                      
# defined                   Mu                       
# dispatch:<!>              Mu                       
# dispatch:<.*>             Mu                       
# dispatch:<.+>             Mu                       
# dispatch:<.=>             Mu                       
# dispatch:<.?>             Mu                       
# dispatch:<::>             Mu                       
# dispatch:<hyper>          Mu                       
# dispatch:<var>            Mu                       
# does                      Mu                       
# elems                     Set                      
# emit                      Mu                       
# fmt                       Set                      
# gist                      Set                      
# gistseen                  Mu                       
# grab                      Set                      
# grabpairs                 Set                      
# head                      Any                      
# is-lazy                   Mu                       
# isa                       Mu                       
# item                      Mu                       
# iterator                  Set                      
# keyof                     Set                      
# lazy-if                   Any                      
# match                     Any                      
# maxpairs                  Set                      
# minpairs                  Set                      
# new                       Set                      
# new-from-pairs            Set                      
# nl-out                    Any                      
# not                       Mu                       
# note                      Mu                       
# of                        Set                      
# perl                      Mu                       
# perlseen                  Mu                       
# pick                      Set                      
# pickpairs                 Set                      
# print                     Mu                       
# print-nl                  Any                      
# put                       Mu                       
# raku                      Set                      
# rakuseen                  Mu                       
# return                    Mu                       
# return-rw                 Mu                       
# roll                      Set                      
# say                       Mu                       
# self                      Mu                       
# set_why                   Mu                       
# sink                      Mu                       
# skip                      Any                      
# so                        Mu                       
# split                     Mu                       
# tail                      Any                      
# take                      Mu                       
# toggle                    Any                      
# total                     Set                      

## But there's something wrong here, there are methods missing from the full list.

say $s.values; # (True True True)
say $s.keys;   # (4 2 6)

say $s.^methods;  # There's no "values" in this list:
# (menu default pick minpairs Setty grabpairs SET-SELF raku Method+{is-nodal}.new Real Baggy iterator keyof Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Mixy of grab Method+{is-nodal}.new ACCEPTS new elems Method+{is-nodal}.new Str Method+{is-nodal}.new WHICH Bool RAW-HASH fmt new-from-pairs Numeric total maxpairs Method+{is-nodal}.new Capture Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Int gist Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new Num Method+{is-nodal}.new Method+{is-nodal}.new Method+{is-nodal}.new roll pickpairs STORE BUILDALL)

say so $s.^methods.gist.grep(/<<values>>/);  # False
say so $s.^methods.gist.grep(/<<maxpairs>>/); # True

## Theory: the Hash-ish methods come from some role,
## and ^methods (and hence, my menu) doesn't see them.
