#!/usr/bin/env raku
# 
# a_is_for_airity.raku            25 Aug 2024 

use v6;


multi talk_to_me ( $a ) {
  say "we got ONE argument";
}

multi talk_to_me ( $a, $b ) {
  say "we got TWO arguments";
}

multi talk_to_me ( @args ) {
   say "looks like more than two args";
}


talk_to_me( "hey" );  
talk_to_me( "hey", "ho" );

talk_to_me( "hey", "ho", "let's go" );






# ====
#  sheet of cheats

# A unicode paste board:
# «
# »
# π
# 𝑒

# use DBIish;
# my $dbh = DBIish.connect("Pg", database => 'doom', :user<doom>, :port<5434>);

# my $sth = $dbh.prepare(q:to/STATEMENT/);
#     SELECT * FROM funked_up
# STATEMENT

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

