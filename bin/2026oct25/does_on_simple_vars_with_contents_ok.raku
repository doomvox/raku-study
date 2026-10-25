#!/usr/bin/env perl6

use Object::Examine;

my Int $i = 666;
$i does Introspector;
# 
# Question, will we see:
# Cannot use 'does' operator on a type object Int
# A: no we don't!

say $i.menu;


# Conclusion: Rob is right.  Undefined vars behave differently than merely declared ones.  

my Int $not_yet;
$not_yet does Introspector;
## 
## Cannot use 'does' operator on a type object Int.
