#!/usr/bin/env raku
# 
# rir_question.raku            16 Apr 2023 

# Rob raised a question about interpolation into quoted strings

use v6;

# say "@.phooey";
# Variable @.phooey used where no 'self' is available

my @a = [1,2,3];
say "@a[]"; # 1 2 3

say "@[]"; # @[]

say "@[].phooey"; # @[].phooey


## So, the '@.' is somekinda twigily thing to the parser?

## an oddity, not *too* bad as a LTA error-- gets you to the problem.

