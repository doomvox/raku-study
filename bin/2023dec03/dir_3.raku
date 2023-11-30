#!/usr/bin/env raku
# 
# dir_3.raku            29 Nov 2023 

use v6;

my $tmp_dir = "/home/doom/tmp/Alpha";
## mkdir unless -d ?
my @files = q:to/END/.split("\n");
  able.txt
  baker.txt
  charlie.txt
  delta.txt
  eigenvalue.txt
  foxtrot.txt
  END

chdir( $tmp_dir );
say @files;
for @files>>.chomp -> $f {
    run('touch', $f) if $f;
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

