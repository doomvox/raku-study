#!/usr/bin/env raku
# 
# multidispatch-01.raku            14 Jul 2024 

use v6;

multi sub action( Str $thing ) {
    say "ONE: $thing!";
}
 

multi sub action( $thing ) {
    say "TWO: $thing";
}


'thing' => $thing

$hash{thing} = $thing;

%hash{'thing'} = $thing;
%hash<thing> = $thing;

my $word = <word>;
my @words = <one thing after another>;
my $one_string = 'one thing after another';

my @words = <<one thing after another $thing>>;



multi sub action( :$thing ) {
    say "THREE: $thing";
}

action( "hey" );

action( thing => "ho" );
