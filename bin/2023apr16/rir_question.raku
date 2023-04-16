#!/usr/bin/env raku
# 
# rir_question.raku            16 Apr 2023 

use v6;

# say "@.phooey";
# Variable @.phooey used where no 'self' is available

my @a = [1,2,3];
say "@[]"; # @[]

say "@<>"; # @[]
