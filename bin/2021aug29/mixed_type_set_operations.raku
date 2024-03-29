#!/usr/bin/env perl6
# 
# mixed_type_set_operations.raku            20 Aug 2021 

use v6;

my %h1  = alpha =>  1,   beta =>  2,   gamma =>  3;
my %h2  = alpha =>  1.1, beta =>  2.2, gamma =>  3.3;

my $bag1 = %h1.Bag;
my $mix1 = %h2.Mix;

{
    my @isa1 = $bag1.^mro;
    my @isa2 = $mix1.^mro;
    say @isa1;  # [(Bag) (Any) (Mu)]
    say @isa2;  # [(Mix) (Any) (Mu)]
    say @isa1 (-) @isa2;  # Set((Bag))
    say @isa2 (-) @isa1;  # Set((Mix))

}
say "===";
{
    my $result = $mix1 (-) $bag1;
    dd $result;
    # Mix $result = ("beta"=>0.2,"gamma"=>0.3,"alpha"=>0.1).Mix
    #   Mix minus Bag => Mix
}

{
    my $result = $bag1 (-) $mix1;
    dd $result;
    # Mix $result = ("gamma"=>-0.3,"beta"=>-0.2,"alpha"=>-0.1).Mix
    #   Bag minus Mix => Mix
}

my $mixhash1 = %h1.MixHash;
my $mix2 = %h2.Mix;

{
    my $result = $mixhash1 (-) $mix2;
    dd $result;
    # MixHash $result = ("beta"=>-0.2,"alpha"=>-0.1,"gamma"=>-0.3).MixHash
    # MixHash minus Mix =>  MixHash
}
{
    my $result = $mix2 (-) $mixhash1;
    dd $result;
    # Mix $result = ("gamma"=>0.3,"alpha"=>0.1,"beta"=>0.2).Mix
    # Mix minus MixHash => Mix
}
say "===";
{
    my %tl  = godzilla =>  7.4, ghidra =>  9.2,  gammera =>  6.7;
    my %cl  = godzilla =>  9.2, ghidra =>  9.99, gammera =>  3.1;

    my $r = %cl (-) %tl;
    dd $r; # Set $r = Set.new()

    $r = %cl.Mix (-) %tl.Mix;
    dd $r; 
    # Mix $r = ("gammera"=>-3.6,"ghidra"=>0.79,"godzilla"=>1.8).Mix
}




# ===
# Author:  doom@kzsu.stanford.edu

