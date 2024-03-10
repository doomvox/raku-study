#!/usr/bin/env raku
# 
# bruce_sort_naturally.raku            10 Mar 2024 

use v6;

sub naturally ( Str $s --> List ) {
    $s.split(:v, /\d+/).map({ +$_ // $_ }).cache
}

my @a = <afoo12 afoo2 abar12 abar9foo abar64foo abar64bang abar64bang4foo abar64bang4bar abar64bang5bar abar64foo abar64foo4foo abar64foo4bar abar64foo14bar abar64foo5bar afoo13 afoo4>;

.say for @a.sort: &naturally;





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

