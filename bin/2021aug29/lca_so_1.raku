#!/usr/bin/env perl6
# 
# lca_so_1.raku            21 Aug 2021 

use v6;

{
   
  class A {}
  class B is A {}
  class C is B {}
  class D is B {}
  class E is D {}
  class M is A {}

  # wamba's solution SO
  say E.^parents.first: * === D.^parents.any;   

#  say E.^parents.first { * === D.^parents.any }; # Unexpected block in infix position (missing statement control word before the expression?)

#  say E.^parents.first( { * === D.^parents.any } ); 
# Malformed double closure; WhateverCode is already a closure without curlies, so either remove the curlies or use valid parameter syntax

  say E.^parents.first({ $_ === D.^parents.any }); 
  # (B)

  # (1) I would've said the "least common ancestor" would be D,
  #     even though you could argue it's not technically an
  #     ancestor of itself: you can treat an E like a D and you
  #     can treat a D like a D, you don't have to treat both like B.

  # (2) I was thinking of the case where you don't know in advance whether
  #     the two things you're comparing are higher or lower in the inheritence tree.
  #     But maybe this solution always works.

  say E.^parents.first({ $_ === C.^parents.any });   # (A)
  say C.^parents.first({ $_ === E.^parents.any });   # (A)

  say C.^parents.first({ $_ === M.^parents.any });   # (A)
  say M.^parents.first({ $_ === C.^parents.any });   # (A)

  say C.^parents;
  # ((B) (A))
  say C.^mro;
  # ((C) (B) (A) (Any) (Mu))

  ## ^mro includes Mu, but that barfs with any
  # say E.^parents.first( { $_ === D.^mro.any } ); 

  say E.^parents.map({ .gist }).first({ $_ === D.^mro.map({ .gist }).any });   # (D)

  say E.^parents.map({ .gist }); # ((D) (B) (A))
  say D.^mro.map({ .gist });     # ((D) (B) (A) (Any) (Mu))


#  say E.^parents.first( { $_ === D.^mro.any } ); 

  say D.^parents( :all ); # ((B) (A) (Any) (Mu))
  say D.^parents(); # ((B) (A))
  # So (Any) (Mu) are "hidden"?

  say D.^mro_unhidden; # ((D) (B) (A) (Any) (Mu))
#  "Returns a list of types in method resolution order, excluding those that are marked with is hidden."
# Why does this include Any/Mu?

#  say D.^mro.map({ not $_.is_hidden });
# No such method 'is_hidden' for invocant of type 'D'
#  say D.^mro.map({ not $_.Hidden });
# No such method 'Hidden' for invocant of type 'D'
#  say D.^mro.map({ not $_.hidden });
# No such method 'hidden' for invocant of type 'D'

  class L {};
  say L.^mro; # ((L) (Any) (Mu))
  say L.^mro.[0]; # (L)
  L.^mro.[0].^methods(:all)>>.name.sort.map({ put $_ });

# ACCEPTS
# ACCEPTS
# ASSIGN-KEY
# ASSIGN-POS
# AT-KEY
# AT-POS
# Array
# BIND-KEY
# BIND-POS
# BUILDALL
# BUILDALL
# BUILD_LEAST_DERIVED
# Bag
# BagHash
# Bool
# CREATE
# Capture
# DELETE-KEY
# DELETE-POS
# DUMP
# DUMP-OBJECT-ATTRS
# DUMP-PIECES
# EXISTS-KEY
# EXISTS-POS
# FLATTENABLE_HASH
# FLATTENABLE_LIST
# Hash
# List
# Map
# Mix
# MixHash
# Numeric
# Real
# Seq
# Set
# SetHash
# Slip
# Str
# Stringy
# Supply
# WALK
# WHERE
# WHICH
# WHY
# ZEN-KEY
# ZEN-POS
# all
# antipairs
# any
# append
# batch
# bless
# cache
# can
# categorize
# classify
# clone
# collate
# combinations
# deepmap
# defined
# dispatch:<!>
# dispatch:<.*>
# dispatch:<.+>
# dispatch:<.=>
# dispatch:<.?>
# dispatch:<::>
# dispatch:<hyper>
# dispatch:<var>
# does
# duckmap
# eager
# elems
# emit
# end
# first
# flat
# flatmap
# gist
# gistseen
# grep
# hash
# head
# invert
# is-lazy
# isa
# item
# iterator
# iterator
# join
# keys
# kv
# lazy-if
# list
# map
# match
# max
# maxpairs
# min
# minmax
# minpairs
# new
# nl-out
# nodemap
# none
# not
# note
# one
# pairs
# pairup
# perl
# perlseen
# permutations
# pick
# prepend
# print
# print-nl
# produce
# push
# put
# raku
# rakuseen
# reduce
# repeated
# return
# return-rw
# reverse
# roll
# rotor
# say
# self
# serial
# set_why
# sink
# skip
# so
# sort
# splice
# split
# squish
# sum
# tail
# take
# toggle
# tree
# unique
# unshift
# values

}


=begin pod

=end pod

=begin text

=end text


# ===
# Author:  doom@kzsu.stanford.edu

