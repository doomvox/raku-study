#!/usr/bin/env raku
# 
# rw_var.raku            05 Jan 2025 

use v6;


# my $changeable = 'seasons' is rw;

## my $changeable is rw = 'seasons';   # Can't use unknown trait 'is' -> 'rw' in  variable declaration.

## my $changeable is ro = 'seasons';   # Can't use unknown trait 'is' -> 'ro' in  variable declaration.

## confusing because has syntax works, albiet only in a class:

has $.changeable is ro = 'seasons';   
## You cannot declare attribute '$changeable' here; maybe you'd like a class or a role?
## You cannot declare attribute '$.changeable' here; maybe you'd like a class or a role?

## So: no easy way to declare a ro var? 

