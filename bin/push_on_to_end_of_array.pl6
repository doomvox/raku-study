#!/usr/bin/env perl6
# 
# push_on_to_end_of_array.pl6            06 Dec 2020 


use v6;

## In raku land arrays don't flatten by default, you need do
## something special to get that to happen.

## So the first question is what do you mean by doing a push?  
my @A1 = <alpha beta gamma>;
my @A2 = <delta epsilon>;

{   ## .push treats an array as a single new element
    my @n = @A1;
    @n.push( @A2 );
    say @n;        # [alpha beta gamma [delta epsilon]]
    say @n[3];     # [delta epsilon]
    say @n[3][0];  # delta
}

{   ## to get a perl5-style "push", you might explicitly flatten
    my @n = @A1;
    @n.push( | @A2 );
    say @n;        # [alpha beta gamma delta epsilon]
}


{   ## or use .append, which flattens and pushes in one step
    my @n = @A1;
    @n.append( @A2 );
    say @n;        # [alpha beta gamma delta epsilon]
}

{   ## you could also explicitly flatten both arrays
    my @n = | @A1, | @A2;
    say @n;        # [alpha beta gamma delta epsilon]
}


{   ## but perhaps unfortunately, the ,= isn't very useful with arrays:
    my @n = @A1;
    @n ,= | @A2;
    say @n;        # (\Array_72068832 = [Array_72068832 delta epsilon])
    # you've got a circular reference there in the first element
}
{
    ## that's exactly parallel to skipping the flattening on the first array:
    my @n = @A1;
    @n = @n, | @A2;
    say @n;        # (\Array_50280568 = [Array_50280568 delta epsilon])
}

## note: when you're pushing single elements, push and append behave the same
{ 
    my @n = @A1;
    @n.push('omega');
    say @n; # [alpha beta gamma omega]
}
{ 
    my @n = @A1;
    @n.append('omega');
    say @n; # [alpha beta gamma omega]
}
