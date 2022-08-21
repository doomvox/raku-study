#!/usr/bin/env perl6
# 
# match_basics_sigh.raku            21 Aug 2022 

use v6;

## Having some trouble with .match.
## Starting again with the examples in the docs:

say "properly".match('perl');                     # perl
say "properly".match(/p.../);                     # OUTPUT: «｢prop｣␤» 
say "1 2 3".match([1,2,3]);                       # OUTPUT: «｢1 2 3｣␤» 
say "a1xa2".match(/a./, :continue(2));            # OUTPUT: «｢a2｣␤» 
say "abracadabra".match(/ a .* a /, :exhaustive);
# OUTPUT: «(｢abracadabra｣ ｢abracada｣ ｢abraca｣ ｢abra｣ ｢acadabra｣ ｢acada｣ ｢aca｣ ｢adabra｣ ｢ada｣ ｢abra｣)␤» 
say 'several words here'.match(/\w+/,:global);    # OUTPUT: «(｢several｣ ｢words｣ ｢here｣)␤» 
say 'abcdef'.match(/.*/, :pos(2));                # OUTPUT: «｢cdef｣␤» 
say "foo[bar][baz]".match(/../, :1st);            # OUTPUT: «｢fo｣␤» 
say "foo[bar][baz]".match(/../, :2nd);            # OUTPUT: «｢o[｣␤» 
say "foo[bar][baz]".match(/../, :3rd);            # OUTPUT: «｢ba｣␤» 
say "foo[bar][baz]".match(/../, :4th);            # OUTPUT: «｢r]｣␤» 
say "foo[bar][baz]bada".match('ba', :x(2));       # OUTPUT: «(｢ba｣ ｢ba｣)␤» 




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

