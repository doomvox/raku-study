#!/usr/bin/env raku
# 
# infinite_sequence.raku            24 Aug 2025 

use v6;


my $s = (1 ... (Inf));

say $s;  ## (...)
put $s;  ## ...

# for 1 ... (Inf) {
#     say "uh oh...: $_";
# }

.say for 1 .. 3;  # 1 2 3 

.say for 9 .. 7;  ## nada 

.say for 9 ... 7;  ## nada 
