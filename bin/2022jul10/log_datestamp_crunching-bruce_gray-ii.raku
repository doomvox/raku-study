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

# for %c.sort {
for %c.sort( +*.key ) {
    put .raku if .value».[4] eqv ("user logged in", "user changed password", "user logged off");
}

# "1471871739" => $[(1471871739, "178.57.66.225", "fxsciaqulmlk", " - ", "user logged in", " -"), (1471871739, "178.57.66.225", "fxsciaqulmlk", " - ", "user changed password", " -"), (1471871739, "178.57.66.225", "fxsciaqulmlk", " - ", "user logged off", " -")]
# "1471871759" => $[(1471871759, "178.57.66.205", "erdsfsdfsdf", " - ", "user logged in", " -"), (1471871759, "178.57.66.205", "erdsfsdfsdf", " - ", "user changed password", " -"), (1471871759, "178.57.66.205", "erdsfsdfsdf", " - ", "user logged off", " -")]
# "1471871959" => $[(1471871959, "178.56.66.225", "fxsciaqulmla", " - ", "user logged in", " -"), (1471871959, "178.56.66.225", "fxsciaqulmla", " - ", "user changed password", " -"), (1471871959, "178.56.66.225", "fxsciaqulmla", " - ", "user logged off", " -")]
