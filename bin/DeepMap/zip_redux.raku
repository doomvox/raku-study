#!/usr/bin/env raku
# 
# zip_redux.raku            04 Feb 2025 

use v6;

{ # 
    my %new;
    %new = %threat.keys [Z] %threat.values;
    say %new;
    # {dracula 4 => (rhodan 5), horta IterationEnd => (godzilla 8), mothera 6 => (blob 3), wolfman 3 => (tingler 3)}
}

{
    my @a = <a b c>;
    my @n = 1, 2, 3;

    my $result = @a [Z] @n;
    say $result;  #  [a b c]

    ## I still understand zip naught.

 }
