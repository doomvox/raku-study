#!/usr/bin/env perl6
# 
# william_michaels_log_datestamp_crunching.raku            10 Jul 2022 

use v6;


## William Michaels "one-liner" answer:
#  raku -MDateTime::Parse -e 'my @a; my @b; for lines() {   \
#          @a.push($_.subst("+0200", "GMT", :global).split(/ "|" | \s "-" \s? /, :skip-empty));  \
#          @b.push(DateTime::Parse.new(@a.[*-1][0]).posix)}; my %c.=append([Z=>] @b, @a>>.[1..*-1]);  \
#          for %c.sort -> $i {$i.raku.put if $i.values.contains("user logged in" & "user changed password" & "user logged off")  \
#          && ($i.value.elems == 9)}'  file


#  https://unix.stackexchange.com/questions/705842/rewriting-log-parsing-script-in-perl-or-python-get-rid-of-awk/709253#709253

# I need accomplish a task of filtering activity of bots in the log file.

# Solution should only show records meeting following criteria

#     user logged in, user changed password, user logged off within same second (all 3 actions have to be done within 1 second);
#     those actions (log in, change password, log off) happened one after another with no other entries in between.

# Perl or Python (with minimum usage of external libs) 


use DateTime::Parse;

my $data_file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/dat/somedata.log";

my @a;
my @b; for $data_file.IO.lines() {   
    @a.push( $_.subst("+0200", "GMT", :global).split(/ "|" | \s "-" \s? /, :skip-empty));  
    @b.push( DateTime::Parse.new(@a.[*-1][0]).posix)
};
my %c.=append( [Z=>] @b, @a>>.[1..*-1] );  
for %c.sort -> $i {
   $i.raku.put if $i.values.contains( "user logged in" & "user changed password" & "user logged off" ) && ( $i.value.elems == 9 )
}

# "1471871739" => $["178.57.66.225", "fxsciaqulmlk", "user logged in", "178.57.66.225", "fxsciaqulmlk", "user changed password", "178.57.66.225", "fxsciaqulmlk", "user logged off"]

# "1471871759" => $["178.57.66.205", "erdsfsdfsdf", "user logged in", "178.57.66.205", "erdsfsdfsdf", "user changed password", "178.57.66.205", "erdsfsdfsdf", "user logged off"]

# "1471871959" => $["178.56.66.225", "fxsciaqulmla", "user logged in", "178.56.66.225", "fxsciaqulmla", "user changed password", "178.56.66.225", "fxsciaqulmla", "user logged off"]
