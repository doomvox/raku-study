#!/usr/bin/env perl6
# 
# bruce_gray_io_lines_etc.raku            15 Aug 2021 

use v6;

my $file = "/home/doom/tmp/monsters.txt";

for $file.IO.lines.grep({ ! /^END/ or last }) {
    .say if /^k/;
} # kong

say "===";

.say for $file.IO.lines.grep({ last if /^END/; True }).grep(/^g/);

say "===";

for $file.IO.lines.grep({ !/^END/ or last }) {
    .say if /^g/;
}

say "===";


## monsters.txt at present:
## 
# godzilla
# ghidora
# mothera
# gammera
# frankenstein
# wolfman
# kong
# END
# gillman
# tingler
# blob
# zuckerberg




