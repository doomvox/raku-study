#!/usr/bin/env perl6
# 
# matches_dollar_parens_addsign_hyper.raku            24 Jul 2022 

use v6;

# https://raku.org/archive/doc/design/apo/A05.html
#   RFC 071: Variable-length lookbheind

# Update: $() now represents the entire matched string, but the match
# object is now $/, and a list of all beginnings is returned by the
# hyperoperator @()».beg. But note that string positions are not
# necessarily integers in Perl 6. They are tagged with the units of the
# string, so that you can't inadvertently mix byte, codepoint, or
# grapheme offsets.





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

