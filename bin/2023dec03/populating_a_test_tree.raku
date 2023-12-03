#!/usr/bin/env raku
# 
# populating_a_test_tree.raku            03 Dec 2023 

use v6;

## Knocked out some code like this recently:

{
    ## automatically populating a test location (TODO needs work)
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

}

{ 
    ## This has problems.
    ## Get in the habit of using:
    my $HOME = $*ENV<HOME>;
    my $tmp_dir = "$HOME/tmp/Alpha"    
    ## Q: what 


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
