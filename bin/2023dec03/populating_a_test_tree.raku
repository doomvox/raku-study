#!/usr/bin/env raku
# 
# populating_a_test_tree.raku            03 Dec 2023 

use v6;


## Knocked out some code like this recently
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
    ## That has issues:
    ## (1) don't hardcode "doom"
    my $HOME = $*ENV<HOME>;
    my $tmp_dir = "$HOME/tmp/Alpha"    
    ## (2) 
    ## Q: what difference $*CWD assignment and chdir?
    ##    dynamic and lexical?
    chdir ( $tmp_dir );
    # $*CWD = $tmp_dir;
    ## (3) there's  neater ways of entering lists

    my @files = <<
    able.txt
    baker.txt
    charlie.txt
    delta.txt
    eigenvalue.txt
    foxtrot.txt
    >>;




    ## (4) shelling out to 'touch' is cheesy    
    ## (5) should allow for subdirs
    ##     can you open and spurt and create intervening dirs?

    ## (6) choosing a root (like 'Alpha') and dealing with
    ##     possible collisions with pre-existing locations
    ##     and such has it's own issues
    ##     There are three seperate cases (with subcases):
    ##       o  exploratory trial runs
    ##       o  automated tests (*.t)       
    ##       o  demos
    ##
    ##      sub-cases:
    ##        o  my practice ("~/tmp")
    ##        o  supporting others preference 
    ##           (fall back to "/tmp" if need be?)
    ##        o  tests should use File::Temp    


}


