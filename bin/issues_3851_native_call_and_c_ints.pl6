#!/usr/bin/env perl6
# 
# issues_3851_native_call_and_c_ints.pl6            20 Dec 2020 

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

use v6.d;
use NativeCall;
class simple is repr('CStruct') {
    has uint16 $.value;
}

my $simple = simple.new(:value(0xffff));
say "BROKEN!" if $simple.value ≠ 0xffff;






# ====
#  sheet of cheats, as of Thu  May 17, 2018  08:48  tango

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

