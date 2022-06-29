#!/usr/bin/env perl6
# 
# string_together_last_two_into_one.raku            29 Jun 2022 

use v6;

## An example used in the slides for the Bruce Gray tutorial at tprc

{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push( @disney.pop ~ @disney.pop );

 say @disney; # [Ariel Belle Cinderella EeyoreDumbo]
}


{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push( do { my $b = @disney.pop; my $a = @disney.pop; $a ~ $b } );

 say @disney; # [Ariel Belle Cinderella DumboEeyore]
}


{
 my @disney = <Ariel Belle Cinderella Dumbo Eeyore>;
 @disney.push(  @disney.splice( *-2, 1) ~ @disney.pop );

 say @disney; # [Ariel Belle Cinderella DumboEeyore]
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

