#!/usr/bin/env raku
# 
# subset_columns.raku            07 Apr 2024 

use v6;

my @required = <chrom   pos ref alt>;
my @additional = <a1 a4>;
my @fields = | @required, | @additional;

# say @fields;

my $file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2024apr07/dat/data.csv";

my ($header,@l) = $file.IO.lines;
@l.say;




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

