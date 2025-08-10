#!/usr/bin/env raku
# 
# ranges_and_sequences-counting_up_and_down.raku            10 Aug 2025 

use v6;

for (1..3) { .say; }
# 1
# 2
# 3

say "===";
for (3..1) { .say; }
# <no output>
say "===";
for (3...1) { .say; }
# 3
# 2
# 1
say "===";
