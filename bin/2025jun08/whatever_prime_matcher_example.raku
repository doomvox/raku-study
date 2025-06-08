#!/usr/bin/env raku
# 
# whatever_prime_matcher_example.raku            08 Jun 2025 

use v6;

sub find-constraint {
    return 23;
}

{
    my $constraint           = find-constraint() // *;
    my $maybe-always-matcher = * ~~ $constraint;

    say $maybe-always-matcher('ha!');   # False
    say $maybe-always-matcher(7);       # False
    say $maybe-always-matcher(23);      # True

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

