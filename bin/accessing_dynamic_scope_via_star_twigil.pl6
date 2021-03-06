#!/usr/bin/env perl6
# 
# accessing_dynamic_scope_via_star_twigil.pl6            17 Jan 2021 

use v6;

## Make errors into warnings
##  CATCH { default { say "CAUGHT: ", .Str; .resume } }

my $lexical   = 1;
my $*dynamic1 = 10;
my $*dynamic2 = 100;
 
sub say-all() {
    say "$lexical, $*dynamic1, $*dynamic2";
}
 
say-all();    # OUTPUT: 1, 10, 100 
 
{
    my $lexical   = 2;
    my $*dynamic1 = 11;
    $*dynamic2    = 101;
 
    say-all(); # OUTPUT: 1, 11, 101 
}
 
say-all();  # OUTPUT: 1, 10, 101 

say "===";

my $var = '76trombones';
sub factory {
    return { say $var };
}

{
    my $var = 3;
    my $coderef = factory();
    $coderef();  # 76trombones
}

{
    my $var = 7;
    my $coderef = factory();
    $coderef();  # 76trombones
}


my $*dyno = 77;
sub factory2 {
    return { say $*dyno };
}

{
    my $coderef = factory2();
    my $*dyno = 3;
    $coderef();  #  3
}

{
    my $coderef = factory2();
    my $*dyno = 7;
    $coderef();  #  7
}
