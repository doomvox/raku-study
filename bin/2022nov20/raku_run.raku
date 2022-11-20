#!/usr/bin/env perl6
# 
# raku_run.raku            20 Nov 2022 

use v6;






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
my $arg = 'hey there';
my $captured1 = run('echo', $arg, :out).out.slurp;
my $captured2 = run(«echo "$arg"», :out).out.slurp;

dd( $captured1 ); # Str $captured1 = "ls\n"


my $proc_1 = run('echo', $arg, :out);
dd( $proc_1 );
## Proc $proc_1 = (my \Proc_94905311123208 = Proc.new(in => IO::Pipe, out => IO::Pipe.new(proc => Proc_94905311123208, path => IO::Path, chomp => Bool::True, nl-in => "\n", nl-out => "\n", encoding => "utf8"), err => IO::Pipe, exitcode => Nil, signal => Any, pid => 151130, command => ("echo", "hey there")))

if ( $proc_1 ) {
    say "hey";  # hey
}    



# # using shell:
# my $arg = 'Hello';
# my $captured = shell("echo $arg", :out).out.slurp;
# my $captured = qqx{echo $arg};


## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

