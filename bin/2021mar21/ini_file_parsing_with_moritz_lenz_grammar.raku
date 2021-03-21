#!/usr/bin/env perl6
# 
# ini_file_parsing_with_moritz_lenz_grammar.raku            20 Mar 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

grammar INIFile {
    token TOP { <section>* }
    token section {
        <header>
        <keyvalue>*
        }
    rule header {
        '[' <-[ \] \n ]>+ ']'
    }
    rule keyvalue {
        ^^
        $<key>=[\w]
        <[:=]>
        $<value>=[<-[\n;#]>*]
        <.eol>
    }
    token ws { <!ww> \h* }
    token eol {
        \n [\h*\n]*
        }
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





# ===
# Author:  doom@kzsu.stanford.edu

