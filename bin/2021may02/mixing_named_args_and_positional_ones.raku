#!/usr/bin/env perl6
# 
# mixing_named_args_and_positional_ones.raku            01 May 2021 

use v6;

{
    sub dostuff (*%nameo, *@ordo) {
        my $item1 = %nameo{'his'};
        my $action  = @ordo[0]; ## the first ordered parameter

        printf "%s %s!\n", $action, uc( $item1 );
    }
    dostuff( his => 'bingo', 'shout' );  # shout BINGO!
}

{
    sub slurp_array (*%opt, *@list) {
        say "count: ", @list.elems;
    }
    my @monsters = < godzilla grendel wormface blob >;
    slurp_array( @monsters ); # count: 4

    my @rabbits  = < bugs peter easter >;
    slurp_array( @monsters, @rabbits ); # count: 7
    ## hm... that's okay by me, but I expected *2*
}

say '---';
{
    ## perl5 idiom: ordered args with an options hash ref in last place:
    ##   copyoid( $source, $dest, { recursive => 1, warn_level => 0 } );

    ## raku simplifies this:
    ##   copyoid( $source, $dest, recursive => 1, warn_level => 0 );

    sub copyoid ( $source, $dest, *%opt ) {
        my ($recursive, $warn_level) = %opt<recursive warn_level>;
        say "oidally copy: $source to $dest";
        say "recursive: $recursive";
        say "warn_level: $warn_level";
        ## ... do the stuff
    }

    # This works as expected
    copyoid("/tmp/oid_loc_1", "/home/doom/mah_oid_loc", recursive => 1, warn_level => 666 );
    # oidally copy: /tmp/oid_loc_1 to /home/doom/mah_oid_loc
    # recursive: 1
    # warn_level: 666

    # This, however, with a space before the paren, has issues:
    # copyoid ("/tmp/oid_loc_1", "/home/doom/mah_oid_loc", recursive => 1, warn_level => 666 );
    ## Too few positionals passed; expected 2 arguments but got 1
    
    # Note the call works without any parens at all:
    copyoid "wuhn", "done", recursive => 0, warn_level => 23;
    # oidally copy: wuhn to done
    # recursive: 0
    # warn_level: 23
 
}



say '---';
{
    sub slurp_array (*%opt, *@list) {
        say "count: ", @list.elems;
    }
    my @monsters = < godzilla grendel wormface blob >;
    slurp_array( @monsters ); # count: 4

    my @rabbits  = < bugs peter easter >;
    slurp_array( @monsters, @rabbits ); # count: 7
    ## hm... that's okay by me, but I expected *2*
}



## Try to make errors into warnings
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }

# ===
# Author:  doom@kzsu.stanford.edu

