#!/usr/bin/env raku
# 
# mkdir.raku            30 Nov 2023 

use v6;

## Checking that with Raku's "mkdir", it does not error out if the directory exists already.
my $t = "/home/doom/tmp/YetAnotherDamnTestLocationToMessWith";
{
    my $io_path_obj = mkdir( $t );
    dd( $io_path_obj );
}
say "===";
{
    say "Let's try that again...";
    my $io_path_obj = mkdir( $t );
    dd( $io_path_obj );
}
say "===";



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

