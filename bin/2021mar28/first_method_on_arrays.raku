#!/usr/bin/env perl6
# 
# first_method_on_arrays.raku            28 Mar 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;



say "===";
#Liz IRC

{
    my @a = 3,7,6,12,9,6,6,6;
    say @a.first(6, :k);
    # 2 

#           0 1 2  3 4 5 6 7
    my @a = 3,7,6,12,9,6,6,6;
    say @a.first(6, :k, :end); # for the record: from the other end
    # 7 

# my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k) 
# > my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k)
# 8
# 7 
# > my @a = <A A B C D D D E>; say @a.elems; say @a.first("E", :k, :end)
# 8
# 7 

# my @a = <A A B E C D D D E>; say @a.elems; say @a.first("E", :k)
# 9
# 3
# > my @a = <A A B E C D D D E>; say @a.elems; say @a.first("E", :k, :end)

}

exit;





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





# ===
# Author:  doom@kzsu.stanford.edu

