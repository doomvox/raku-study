#!/usr/bin/env perl6
# 
# 11-modify_substr_via_subst.raku            21 Aug 2022 

use v6;

my $DEBUG = 1;

{

 my $str = q:to/ENDSTR/;
Look out honey, cause I'm using technology
FLAGGED: usage "honey"
Ain't got time to make no apology.
ENDSTR

 de_sweeten( $str, 'respected colleague' );

 ($DEBUG) && say "---";
  say $str;

# Look out respected colleague, cause I'm using technology
# Ain't got time to make no apology.
# FLAGGED: usage "honey"
}

sub de_sweeten( $str is rw, $fix ) {
  ## Find where FLAGGED line begins
  my $skip1 = $str.index('FLAGGED:');
  ($DEBUG) && say "skip1: $skip1";
  ## Find where FLAGGED line ends
  my $skip2 = $str.match(/$/, :pos( $skip1 ));
  ($DEBUG) && say "skip2: $skip2";

  ## modify region *after* skipped region first
  ## modify region before skipped region
}






# ====
#  sheet of cheats

# A unicode paste board:
# «
# »
# π
# 𝑒

# use DBIish;
# my $dbh = DBIish.connect("Pg", database => 'doom', :user<doom>, :port<5434>);

# $sth.execute();
# my @rows = $sth.allrows();



# external commands without shell:
# my $arg = 'Hello';
# my $captured = run('echo', $arg, :out).out.slurp;
# my $captured = run(«echo "$arg"», :out).out.slurp;


# using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

