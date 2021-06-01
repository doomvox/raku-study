#!/usr/bin/env perl6
# 
# file_find_with_junction_as_exclude.raku            20 May 2021 

use v6;
use File::Find;

## the place we'll put some files and then look for them
my $HOME = %*ENV{'HOME'};
my $loc = "$HOME/tmp/monster_island";

## some names to work with
my @monsters = < godzilla mothera rhodan >;

{
    ## create some files to find
    mkdir( $loc );
    chdir( $loc );
    my @monsters = < godzilla mothera rhodan >;
    for @monsters -> $name {
        $name.IO.spurt("The $name attacks!");
    }
}

{
    ## without exclude, we find all 3 files
    my @files_all = find( dir => $loc, type => 'file' );
    say @files_all.elems;     # 3
}

say '---';
{
    ## with a handcrafted regex we find only 2, skipping mothera as expected
    
    # Note, <|w> is the general boundary pattern, like perl's \b, << is a more specific left-boundary match
    #    my @files_trimmed = find( dir => $loc, type => 'file', exclude => rx/<|w>[mothera|camel]$/ );    
    my @files_trimmed = find( dir => $loc, type => 'file', exclude => rx/<< [mothera|camel]$/ );    
    say @files_trimmed; # ["/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO]
    say @files_trimmed.elems; # 2
}

say '---';
{
    ## Trying to do the same with an any junction doesn't work:
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my @files = find( dir => $loc, type => 'file', exclude => any(@exclude) );    
    say @files;
    # [any(("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO), ("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO))]
    ## 
    ## (1) we end up with a single "any" junction in the first element
    ## (2) there are five hits, two redundant rhodan and godzillas, plus one mothera slips through (?)

    ## but note that this works:
    for @monsters {
        .say unless $_ ~~ any(@exclude)
    }
    # godzilla
    # rhodan

    ## Oh, but this works too (no need for the regexes in this case):
    my @exclude_str = ( 'mothera', 'camel' );
    for @monsters {
        .say unless $_ ~~ any(@exclude_str)
    }
    # godzilla
    # rhodan

    my @files = find( dir => $loc, type => 'file', exclude => any(@exclude_str) );    
    say @files;
    ## [any(("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO), ("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO))]

}

say '---';
## raiph: precedence issues? 
{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $any_exclude = any(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => $any_exclude );    
    say @files;
## [any(("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO), ("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO))]
}

say '---';
{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $any_exclude = any(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => ($any_exclude) );    
    say @files;
    # [any(("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO), ("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO))]
    }

{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $all_exclude = all(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => $all_exclude );    
    say @files;
# [all(("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO), ("/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO))]
}


{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $any_exclude = any(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => { $any_exclude } );    
    say @files;
    # ["/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO]
}


{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $all_exclude = all(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => { $all_exclude } );    
    say @files;
    # ["/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/mothera".IO "/home/doom/tmp/monster_island/rhodan".IO]
}



# vaddim suggestion (works)
{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $any_exclude = any(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => { $_ ~~ any(@exclude) } );
    say @files;
    # ["/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO]
}


# variation of vaddim suggestion (works)
{
    my @exclude = ( rx/<|w>mothera$/, rx/<|w>camel$/ );
    my $any_exclude = any(@exclude);
    my @files = find( dir => $loc, type => 'file', exclude => * ~~ any(@exclude) );
    say @files;
    # ["/home/doom/tmp/monster_island/godzilla".IO "/home/doom/tmp/monster_island/rhodan".IO]
}
