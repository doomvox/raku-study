#!/usr/bin/env perl6
# 
# rob_using_topic_vs_named_var.raku            07 Aug 2022 

use v6;

say "abc".flip;  # cba
say 123.flip;    # 321

say topic("123");    
say named("123");

say 123 + 321;


sub topic( $c --> Int ) {
    $_ = $c;
    $_ += .flip;
}

sub named( $c --> Int ) {
    my $d = $c;
#    $d += .flip;
    $d += $d.flip;
}

for 32 {
    say .&topic;
    say .&named;
} 
