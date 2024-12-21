#!/usr/bin/env raku
# 
# int_and_int_cool.raku            08 Dec 2024 

use v6;


{
    my Int $i = 3;
    say "$i is a " ~ $i.^name;

#     $i = '3';  ## Type check failed in assignment to $i; expected Int but got Str ("3")
#     say "$i is a " ~ $i.^name;
}

say "===";
{
    my Int(Cool) $i = 3;
    say "$i is a " ~ $i.^name;

    $i = '3';  
    say "$i is a " ~ $i.^name;
}

say "===";

{
    my Int $i = 1;
    my $obj = $i.WHAT;
    say $obj;       #  (Int)
    say $obj.WHAT;  #  (Int)   <-- surprise?
    say $obj.^name; # Int

    my $str = $obj ~ '';
    say "|$str|";
    
    ## BTW, this doesn't work:  say ">>>$str<<<";

    say ">>>$str>>>";  # >>>>>>
#    say "<<<$str<<<";  
      ##  Unable to parse expression in double quotes; couldn't find final '"' (corresponding starter was at line 40)

    say "<  hey there >";  # <  hey there >

    say q<  hey there >;  #   hey there 

    $str = 'nothing';

    ## This works:
    say ">$str <";    # >nothing <

    say ">{$str}<";   # >nothing<


    say "> $str <";    # > nothing <

    ## Martons theory is "$str<"  looks like you are trying to a 
    ## dereference, so the parser is sucking up everything looking for 
    ## a closing >, but then it complains about not finding a closing "
    ## Arguably: LTA

    ## say ">$str<";    # > nothing <
    ##  Unable to parse expression in double quotes; couldn't find final '"' (corresponding starter was at line 63)

    ## error points you at wrong place.

# raku --version
# Welcome to Rakudo™ v2023.02.
# Implementing the Raku® Programming Language v6.d.
# Built on MoarVM version 2023.02.


## William Michels:

# [1] > say "$str< 4"
# ===SORRY!=== Error while compiling:
# Whitespace required before < operator
# at line 2


## William Michels: 
# raku
# Welcome to Rakudo™ v2023.05.
# Implementing the Raku® Programming Language v6.d.
# Built on MoarVM version 2023.05.


## My repl:

# [1] > say ">$str<";    
# ===SORRY!=== Error while compiling:
# Unable to parse quote-words subscript; couldn't find '>' (corresponding '<' was at line 1)
# at line 2
# ------> <BOL>⏏<EOL>
#     expecting any of:
#         postfix

## For bill and I the repl and the script are 



}

{

   my @bunnies  = < bugs peter easter gloria haruhi >;



}

