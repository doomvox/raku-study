#!/usr/bin/env perl6
# 
# william_michaels_log_datestamp_crunching.raku            10 Jul 2022 

use v6;


#  raku -MDateTime::Parse -e 'my @a; my @b; for lines() {   \
#          @a.push($_.subst("+0200", "GMT", :global).split(/ "|" | \s "-" \s? /, :skip-empty));  \
#          @b.push(DateTime::Parse.new(@a.[*-1][0]).posix)}; my %c.=append([Z=>] @b, @a>>.[1..*-1]);  \
#          for %c.sort -> $i {$i.raku.put if $i.values.contains("user logged in" & "user changed password" & "user logged off")  \
#          && ($i.value.elems == 9)}'  file


use DateTime::Parse;

my $data_file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/dat/somedata.log"

my @a;
my @b; for $data_file.IO.lines() {   
    @a.push( $_.subst("+0200", "GMT", :global).split(/ "|" | \s "-" \s? /, :skip-empty));  
    @b.push( DateTime::Parse.new(@a.[*-1][0]).posix)
};
my %c.=append( [Z=>] @b, @a>>.[1..*-1] );  
for %c.sort -> $i {
  $i.raku.put if $i.values.contains("user logged in" & "user changed password" & "user logged off") && ($i.value.elems == 9)
}

