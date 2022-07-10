#!/usr/bin/env perl6
# 
# log_datestamp_crunching-bruce_gray-ii.raku            10 Jul 2022 

use v6;

## TODO clean up path for portablity
my $data_file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/dat/somedata.log";

use DateTime::Parse;
my %c = $data_file.IO.lines().map({
    my ($d, @a) = .split('|');
    DateTime::Parse.new($d.subst("+0200", "GMT")).posix, |@a;
}).classify(*.[0]);

for %c.sort(+*) {
    put .raku if .value».[4] eqv ("user logged in", "user changed password", "user logged off");
}
