#!/usr/bin/env perl6
# 
# stacko_question_itemized_lists_as_arguments.raku            05 Dec 2021 

use v6;


> .say for flat $(8, 76)
8
76

> .say for flat ($(8, 76),)
(8 76)


