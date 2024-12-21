#!/usr/bin/env raku
# 
# try_again.raku            08 Dec 2024 

use v6;


{
    my $str = 'nothing';
    say ">$str <";   
    say ">$str<";    

    ## duplicating what I thought was a repl thing, I see the same behavior in thsi script:
    ## 
    ##  Unable to parse quote-words subscript; couldn't find '>' (corresponding '<' was at line 11)

}


{
    my $str = 'nothing';
    say ">$str <<";   
    say ">$str<<";    

   ## Two angles give you the LTA message I was talking about:
   ##   Unable to parse expression in double quotes; couldn't find final '"' (corresponding starter was at line 23)


   say ">>>$str<<<";

}
