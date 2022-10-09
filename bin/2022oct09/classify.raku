#!/usr/bin/env perl6
# 
# classify.raku            09 Oct 2022 

use v6;

## playing with classify

{
    ## an example from the docs:
    say classify { $_ %% 2 ?? 'even' !! 'odd' }, (1, 7, 6, 3, 2);
    # {even => [6 2], odd => [1 7 3]}
}

{
    ## That's a simplification of a typical idiom:
    my %classified;
    my @numbs  = (1, 7, 6, 3, 2);
    for @numbs -> $n {
        if $n %% 2 {
            %classified{ 'even' }.push($n);  # more perl5ish would be:  push %classified{ 'even' }, $n;
        }
        else {
            %classified{ 'odd' }.push($n);
        }
    }
    say %classified; # {even => [6 2], odd => [1 7 3]}
}

{
    my @toho =     <godzilla rodan mothra ghidorah anguirus moguera maguma dogora baragon>;
    my @monsters = < godzilla mothera ghidora gammera golem rhodan >;

    my $toho_set = @toho.Set;
    my $classified = 
      classify { $_ ∈ $toho_set ?? 'toho' !! 'non_toho' }, @monsters;
    say $classified;
    }
