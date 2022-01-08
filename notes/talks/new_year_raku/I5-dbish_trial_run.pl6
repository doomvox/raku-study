#!/usr/bin/env perl6
#
# Sun  April 29, 2018  13:32  tango
# /home/doom/End/Cave/Perl6/bin/dbish_trial_run.pl6

use v6;
use DBIish;

# my $dbh = DBIish.connect('Pg', :host<db01.yourdomain.com>, :port(5432),
#         :database<blerg>, :user<myuser>, :$password);

# my $dbh = DBIish.connect("Pg", :database<doom>, :user<doom>, :port<5434>);
my $dbh = DBIish.connect( "Pg", database => 'doom', :user<doom>, :port<5434> );

# :database<doom>
# 

my $sth = $dbh.prepare(q:to/STATEMENT/);
    SELECT * FROM funked_up
STATEMENT

# doom=# select * from funked_up;
#  id |    name     | score |                     wisdom                     
# ----+-------------+-------+------------------------------------------------
#   1 | alfred      |    58 | Slavish imitation | gobs hobbies at mini-minds
#   2 | betty       |    32 | Let us retire to the bar: |
#   3 | cain        |    13 | simon : angelic dust
#   4 | dawn        |    16 | |cracked|
#   5 | eeegah      |    88 | -----------
#   6 | finfangfoom |    62 | claw|back|now
#   7 | gort        |    66 | |
#   8 | helen       |    14 | 
#   9 | kane        |     8 | simon : angelic dust
#  10 | king        |     8 | simon : angelic dust
#  11 | kang        |     8 | ><
#  12 | korgie      |     8 | ><
#  13 | kerosine    |     8 | >┼┼┼<
#  14 | fink        |    78 | >䀀<
#  15 | fink        |    78 | >䀀<
#  16 | fink        |    78 | >䀀<
#  17 | fink        |    78 | >䀀<
#  18 | flossie     |    18 | >ሴ<
#  19 | farcical    |    18 | >ሴ<

$sth.execute();

my @rows = $sth.allrows();
say @rows.elems; # 19

$sth = $dbh.prepare(q:to/END_SELECT_SQL/);
    INSERT INTO funked_up ( name, score, wisdom )
    VALUES ( ?, ?, ? )
END_SELECT_SQL

my $mah_number = 2 ** 30;
my $ret = 
  $sth.execute('bingo', $mah_number, 'Nameo your fuckingo selfo.');

say "ret: $ret";
say $ret.WHAT;
