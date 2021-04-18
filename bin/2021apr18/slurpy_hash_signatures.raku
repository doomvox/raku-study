#!/usr/bin/env perl6
# 
# slurpy_hash_signatures.raku            18 Apr 2021 

use v6;

# Before I get started here, a small point about defining hashes.
# There are various ways that work:

my %h1 = ( 'ha' => 1, 'ho' => 2, 'hum' => 3 ); 
my %h2 = (  ha  => 1,  ho  => 2,  hum  => 3 ); 
my %h3 =  ha  => 1,  ho  => 2,  hum  => 3; # favored idiom 
my %h4 = 'ha' => 1, 'ho' => 2, 'hum' => 3;

## perl5 
## my $thing = $h1{ho};

## perl6
## my $thing = %h1{ 'ho' };
## my $thing = %h1<ho>; # favored idiom

say join(' ',
         %h1{'ho'}, %h2{'ho'}, %h3{'ho'}, %h4{'ho'}
        );
# Output: 2 2 2 2

# When accessing the hash, the key *does* need to be quoted
# Because of this, I keep thinking I need to quote keys (as in %h1 or %h4),
# though really the pair operator does implicit quoting of the left side.

# By the way, I do know about this idiom:
say join(' ',
         %h1<ho>, %h2<ho>, %h3<ho>, %h4<ho>
        );
# Output: 2 2 2 2

# Now, on to my main point... 

# Question: what sub signature invocation gives you behavior like
# the standard "new" method, which takes a series of named arguments?

# From Mu.pm6:
#    multi method new(*%attrinit) {

# From Elizabeth Mattijsen, "How subroutine signatures work in Perl 6",  2018sep12 
# https://opensource.com/article/18/9/signatures-perl-6

# If you want to catch any (other) named arguments, you can use a
# so-called "slurpy hash." Just like the slurpy array, it is
# indicated with an asterisk before a hash:

sub slurp-nameds(*%nameds) {
    say "Received: " ~ join ", ", sort keys %nameds;
}
slurp-nameds(foo => 42, bar => 666); # Received: bar, foo

{
    sub genius(*%fried) { say %fried };
    genius( ha => 1, ho => 2, hum => 3 ); 
    ## Output: {ha => 1, ho => 2, hum => 3}

    genius( 'ha' => 1, 'ho' => 2, 'hum' => 3 ); 
    ## Error: Too many positionals passed; expected 0 arguments but got 3

    # Got that?  When passing pairs to a sub, quoting the key causes
    # things to barf, and the messaging is seriously LTA.

    # The pair operator is being demoted to a fat comma?

}

## Bruce Gray:

## https://docs.raku.org/language/traps#Named_parameters 
## sub genius ( Pair $p1, Pair $p2, Pair $p3 ) { … } 
