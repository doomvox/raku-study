#!/usr/bin/env perl6
# 
# B4-an_issue_with_dollar_caret_placeholder_vars.raku            06 Jan 2022 

# Here's a simple use of a callback (anonymous routine) that just works:
    my $cb =  {
         "$^a & $^b";
    };  
    say $cb('a', 'b');  # a & b

# Just as an aside, it's interesting that this would be an error:
#    say $cb('a', 'b', 'c'); 
#    # Too many positionals passed; expected 2 arguments but got 3

# The number of placeholder vars inside the block gives it an
# implicity arity, despite the lack of an explicit sub signature.

# You can of course do more complex things, e.g. using this ternary conditional:
    my $cb = {
         ($^a eq $^b) ?? "$^a" !! "$^a & $^b";
    };  
    say $cb( 'a', 'b' );       # a & b
    say $cb( 'c', 'c' );       # c

# However, doing the same thing with an if/else construct doesn't work.
# It generates a pretty baffling error message:

    my $cb =  {
        do if ($^a eq $^b)  {
             "$^a";
        } else {                   # line 48
             "$^a & $^b";
        }
    };  
    say $cb( 'a', 'b' );                

    # Too few positionals passed; expected 2 arguments but got 1
    #  in code  at /home/doom/End/Cave/Perl6/bin/callback_placeholder_vars_and_if_else-out.raku line 48

# Raku is consistent: curlies are always code blocks--
# even in if/else constructs when you don't think of them that way.

# There are multiple workarounds, I like this one. It turns out that while you 
# *can* (typically) use the ^ everywhere, you only *need* it the first time:

    my $cb =  {
        do if ($^a eq $^b)  {
             "$a";
        } else {    
             "$a & $b";
        }
    };  
    say $cb( 'a', 'b' );                


