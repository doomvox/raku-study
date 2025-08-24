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

say "===";
.say for 1 .. 3;  # 1 2 3 

say "===";
.say for 9 .. 7;  ## nada 

say "===";
.say for 9 ... 7;  ##  9 8 7 
   ## 

say "===";
.say for 'a' ... 'z';
say "===";
.say for 'a' ... 'Z';
