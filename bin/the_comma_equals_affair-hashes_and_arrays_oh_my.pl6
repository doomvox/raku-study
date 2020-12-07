#!/usr/bin/env perl6
# 
# the_comma_equals_affair-hashes_and_arrays_oh_my.pl6    22 Nov 2020 

use v6;

## And odd thing I found in the operator list in the docs:

# https://docs.raku.org/routine/,=

# my %a = :11a, :22b;
# %a ,= :33x;
# say %a # OUTPUT: «{a => 11, b => 22, x => 33}␤»

## Discussed on the perl6-users list:
##   https://www.nntp.perl.org/group/perl.perl6.users/2020/12/msg9422.html

## my first thought: could you use this to add an item to an array, ala push?
## it doesn't seem so, it transforms the contents of the array in a way I don't understand.
my @monsters = < garuda blob golem mothera godzilla >;
@monsters ,= 'tingler';

say @monsters;
# (\Array_54896832 = [Array_54896832 tingler])
# dd  @monsters;
# Array @monsters = ((my @Array_60588032) = [@Array_60588032, "tingler"])
say @monsters[0];     # (\Array_43511432 = [Array_43511432 tingler])
say @monsters[0][0];  # (\Array_43511432 = [Array_43511432 tingler])

say @monsters[*-1];   # tingler

my $toss = @monsters.pop;
say $toss;
say @monsters;     # (\Array_43349816 = [Array_43349816])
say @monsters[0];  # (\Array_43349816 = [Array_43349816])


my @r = 'a', 'b', 'c';
say @r; # [a b c]
@r ,= 'd';
say @r; # (\Array_53270704 = [Array_53270704 d])
dd @r;
# Array @r = ((my @Array_37059224) = [@Array_37059224, "d"])

say "keys: ", @r.keys;      # keys: (0 1)
say "values: ", @r.values;  # values: ((\Array_56495328 = [Array_56495328 d]) d)
say @r[0];  # (\Array_44472736 = [Array_44472736 d])
say @r[1];  # d

say @r[0].keys; # (0 1)
say @r[0][0];  # (\Array_65743128 = [Array_65743128 d])
say @r[0][1];  # d

my $hm = @r[0];
say $hm.WHAT; # (Array)
say $hm.keys; # (0 1)
say $hm.[0];  # (\Array_73238176 = [Array_73238176 d])
say $hm.[1];  # d

### It's as though there's a circular reference there now...

## back to the example in the docs:
say '--- === ---';
my %a = :11a, :22b;
%a ,= :33x;
say %a; # OUTPUT: «{a => 11, b => 22, x => 33}␤»
# {a => 11, b => 22, x => 33}
dd %a;
# Hash %a = {:a(11), :b(22), :x(33)}

# say :33x;
# Unexpected named argument 'x' passed
#   in block <unit> at /home/doom/End/Cave/Perl6/bin/trial-comma_yaddah.pl6 line 48

# say x => 33;
# Unexpected named argument 'x' passed

say 'x' => 33;  # x => 33
say ('x' => 33).WHAT; # (Pair)
say ('x' => 33){'x'}; # 33

# say :33'x';  # Malformed radix number

## so, it's back to understanding pair input syntax for me.
## not sure I get the appeal of that :33x form.

## :33x is a weird special case, brian d foy uses example
## :2nd  which becomes the pair  nd => 2

## d foy mentions the adverbs are actually pairs,
##   :g   is really  g => True

## A weirdness about pairs is you can't "say" them in raw form:

# say x => 33;
## Unexpected named argument 'x' passed
# say :x33;
## Unexpected named argument 'x33' passed
# my $a = x => 33;
# say $a;
## x => 33;


# say x => 33;
#  Unexpected named argument 'x' passed


my %b = :a<11>, :b<22>;
say %b;
# {a => 11, b => 22}
%b ,= :x<33>;
# {a => 11, b => 22, x => 33}
say %b; # OUTPUT: «{a => 11, b => 22, x => 33}␤»
# {a => 11, b => 22, x => 33}
dd %b;
# Hash %b = {:a(IntStr.new(11, "11")), :b(IntStr.new(22, "22")), :x(IntStr.new(33, "33"))}
## the "IntStr" jazz is mildly odd, looks like the p5 dualvar hack.  

my %c = :a, :b;
say %c;
# {a => True, b => True}
%c ,= :x;
say %c;
# {a => True, b => True, x => True}
dd %c;
# Hash %c = {:a(Bool::True), :b(Bool::True), :x(Bool::True)}


my %d = a => 1, b => 2;
say %d;
# {a => 1, b => 2}
%d ,= x => 3;
say %d;
# {a => 1, b => 2, x => 3}
dd %d;
# Hash %d = {:a(1), :b(2), :x(3)}


say "===";
## Note: the :a11 form is not a => 11 but a11 => True
my %e = :a11, :b22;
# {a11 => True, b22 => True}
say %e;
# {a11 => True, b22 => True, x33 => True}
%e ,= :x33;
# {a => 11, b => 22, x => 33}
say %e; # OUTPUT: «{a => 11, b => 22, x => 33}␤»
# {a11 => True, b22 => True, x33 => True}
dd %e;
# Hash %e = {:a11(Bool::True), :b22(Bool::True), :x33(Bool::True)}
say "===";

{
    my %h1 = alpha => 1, beta => 2, gamma => 3;
    my %h2 = delta => 55, eta => 66, epsilon => 88;
    %h1 ,= %h2;
    say %h1;
    # {alpha => 1, beta => 2, delta => 55, epsilon => 88, eta => 66, gamma => 3}
}

{
    my %h1 = alpha => 1, beta => 2, gamma => 3;
    my %h2 = delta => 55, eta => 66, epsilon => 88;
    my %h_merge = %h1, %h2;
    say %h_merge;  # {alpha => 1, beta => 2, delta => 55, epsilon => 88, eta => 66, gamma => 3}
}

{   my @a1 = <alpha beta gamma>;
    my @a2 = <delta epsilon>;

    my @m = @a1;
    my @n = @a2;
    @m ,= @n;
    say @m; # (\Array_63429416 = [Array_63429416 [delta epsilon]])

    my @a = @m, @n;
    say @a; # [(\Array_68524408 = [Array_68524408 [delta epsilon]]) [delta epsilon]]

    @a = | @m, @n;
    say @a; # [(\Array_52847280 = [Array_52847280 [delta epsilon]]) [delta epsilon] [delta epsilon]]

    @a = (@m), @n;
    say @a; # [(\Array_38834512 = [Array_38834512 [delta epsilon]]) [delta epsilon]]

    @a = (@m, @n); # [(\Array_31616832 = [Array_31616832 [delta epsilon]]) [delta epsilon]]
    say @a;
}

{
    my @a1 = <alpha beta gamma>;
    my @a2 = <delta epsilon>;

    my @a_complex = @a1;
    @a_complex.push( @a2 );
    say "a_complex: ", @a_complex;  
    # a_complex: [alpha beta gamma [delta epsilon]]
    
    ## great... even push doesn't do what I think it should do from a p5ish view.
}

{
    my @a1 = <alpha beta gamma>;
    my @a2 = <delta epsilon>;

    my @a_merge = @a1;
    @a_merge.push( | @a2 );  
    say @a_merge;               # [alpha beta gamma delta epsilon]
    ## as usual, slipping values out of the container gets me to DWIM
}

{
    my @a1 = <alpha beta gamma>;
    my @a2 = <delta epsilon>;

    my @a_merge = @a1;
    @a_merge.append( @a2 ); ## flattens and pushes in one step
    say @a_merge;               # [alpha beta gamma delta epsilon]
}


{
    my @a1 = <alpha beta gamma>;
    my @a2 = <delta epsilon>;

    # This version merges two arrays:
#    my @a_merge = ( | @a1, | @a2 );
    my @a_merge =  | @a1, | @a2 ;
    say @a_merge;  # [alpha beta gamma delta epsilon]R> Flipping around the order of key and value when the value is a numeric...?-
    say @a_merge;  # [alpha beta gamma delta epsilon]
}


{
    my @a1 = <alpha beta gamma>;
    my @a2 = <delta epsilon>;

    my @a_merge =  @a1;
    say @a_merge;

    my @a_merge ,= | @a2 ;
    say @a_merge;  #
}

{
    my %all_at_once = a => 1, b => 2, c => 3;

    my %in_stages = a => 1;
    %in_stages ,= b => 2;
    %in_stages ,= c => 3;

    use Test;
    is-deeply( %all_at_once, %in_stages, "Repeated ,= of each pair the same as using all at once." );
    # ok 1 - Repeated ,= of each pair the same as using all at once.

    my @all_at_once = 'a', 'b', 'c';
    say @all_at_once;  # [a b c]

    my @in_stages = 'a';
    @in_stages ,= 'b';
    @in_stages ,= 'c';    
    say @in_stages;  # (\Array_61500640 = [Array_61500640 d])
}


# ## feels sensible
# %a ,= %b;
# %a = %a, %b;

# ## feels nutty (at first)
# @m ,= @n;
# @m = @m, @n;

# <operator>= behaves same in all cases
# $a ~= $b;
# $a = $a ~ $b;

# ,=
