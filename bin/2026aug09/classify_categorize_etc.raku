#!/usr/bin/env raku

{
    ## ~/End/Cave/RakuStudy/Wall/raku-study/bin/2022feb27/rob_classify_issue.raku
    ## An example of broken usage:
    ##  say (3).classify( 3, 4, 5, 6, 7, 8);

    ## guessing at what that was intended to do:

    say (3).classify( * ~~ any(3, 4, 5, 6, 7, 8) );
    ## {True => [3]}

    say (3).classify( { $_ ~~ any(3, 4, 5, 6, 7, 8) } );
    ## {True => [3]}

    say (3).categorize( { $_ ~~ any(3, 4, 5, 6, 7, 8) } );
    ## {True => [3]}

    say (3).classify( * == any(3, 4, 5, 6, 7, 8) );
    ## {any(True, False, False, False, False, False) => [3]}

    say (3).categorize( { $_ == any(3, 4, 5, 6, 7, 8) } );
    ## {any(True, False, False, False, False, False) => [3]}


    say (3).categorize( { $_ == any(3, 4, 5, 6, 7, 8) } ).keys;
    ## (any(True, False, False, False, False, False))
    say | (3).categorize( { $_ == any(3, 4, 5, 6, 7, 8) } ).keys;
    ## any(True, False, False, False, False, False)
    say so | (3).categorize( { $_ == any(3, 4, 5, 6, 7, 8) } ).keys;
    ## True

    ## any(False, False, False, False, False, False)
    say | (3).categorize( { $_ == any(300, 400, 500, 600, 700, 800) } ).keys;
    say so | (3).categorize( { $_ == any(300, 400, 500, 600, 700, 800) } ).keys;
    ## True

    if ( any(True, False, False, False, False, False) ) {
        say "in other words, 'True'";
        ## in other words, 'True'
    }

}

{
    

}










