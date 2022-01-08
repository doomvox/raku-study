#!/usr/bin/env perl6
# 
# bruce_gray_io_lines_etc.raku            15 Aug 2021 

## fixing some small bugs bugs in Bruce Gray's slides
## (lightning talk: "can't be this easy", find link)

my $file = "/home/doom/tmp/monsters.txt";
      ## contains:
        # godzilla
        # mothera
        # gammera
        # wolfman
        # kong
        # END
        # gillman
        # tingler
        # zuckerberg

for $file.IO.lines.grep({ ! /^END/ or last }) {
    .say if /^k/;
} # kong

say "===";
.say for $file.IO.lines.grep({ last if /^END/; True }).grep(/^g/);
# godzilla
# ghidora

say "===";
for $file.IO.lines.grep({ !/^END/ or last }) {
    .say if /^g/;
}
# godzilla
# ghidora
