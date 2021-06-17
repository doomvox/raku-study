#!/usr/bin/env perl6
# 
# doubledeep.raku            16 Jun 2021 

use v6;

{
    my      %h1 = ( alpha => 1, beta => 2 );
    my      $h2 = { alpha => 1, beta => 2 };
    my Hash $h3 = { alpha => 1, beta => 2 };

    say join " ", %h1.^name, $h2.^name, $h3.^name; # Hash Hash Hash
    say %h1.^mro;  # ((Hash) (Map) (Cool) (Any) (Mu))
#    say %h1.^mro.grep('Positional');
#    say %h1.can('Positional');

    say %h1.can('keys');       # (Method+{is-nodal}.new Method+{is-nodal}.new)
    say %h1.can('keys')>>.^name; # List 
    say %h1.can('keys')[0].^name; # Method+{is-nodal}
    say %h1.can('keys')[1].^name; # Method+{is-nodal}
    say %h1.can('keys')[0].^name.^name; # Str

    my @m1 = < godzilla mothera ghidora gammera golem rhodan >;
    my $m2 = < godzilla mothera ghidora gammera golem rhodan >;    
    my $m3 = ( 'godzilla', 'mothera', 'ghidora', 'gammera', 'golem', 'rhodan' );
    say join " ", @m1.^name, $m2.^name, $m3.^name; # Array List List

    say @m1.can('keys'); # (Method+{is-nodal}.new Method+{is-nodal}.new)
    say so @m1.can('keys'); # True

    say $h2.keys; # (alpha beta)
    say $m2.keys; # (0 1 2 3 4 5)

    say $h2{'alpha'}; # 1
    say $m2[0]; # godzilla

    ## need is_positional(); is_associative(); to know how to use keys
    ## also need to preserve types in new structure

    # say $h2.positional; # No such method 'positional' for invocant of type 'Hash'
    # say $m2.positional; # No such method 'positional' for invocant of type 'List'

    # say $h2.associative; # No such method 'associative' for invocant of type 'Hash'
    # say $m2.associative; # No such method 'associative' for invocant of type 'List'

    say $h2.^method_names;
    # (clone STORE_AT_KEY STORE BIND-KEY keyof of name default dynamic push append classify-list categorize-list WHICH Hash Map AT-KEY ASSIGN-KEY DELETE-KEY raku gist DUMP BUILDALL)
    say $m2.^method_names;
    # (from-iterator from-slurpy from-slurpy-onearg from-slurpy-flat new to from sum fmt ASSIGN-POS BIND-POS reification-target iterator sink STORE eager Capture FLATTENABLE_LIST FLATTENABLE_HASH CALL-ME pick roll reverse rotate combinations permutations join push append unshift prepend shift pop of item flat lazy-if lazy hyper race Bool Int end Numeric Str elems AT-POS EXISTS-POS ACCEPTS list values keys kv pairs antipairs invert gist raku List Slip Array Supply is-lazy sort tail chrs Mix MixHash Bag BagHash Set SetHash BUILDALL)
    }

sub is_positional ( $item ) {
#    $item.^methods>>.name;
#         .^methods(:local)».name.join(', ');

}





my  %g1   = ( 2015 => {  1 => { de => 177.00,
                                fr => 191.25, },
                         2 => { de => 74.00,
                                fr => 555.50, },
                      },
               2016 => { 1 => { de => 177.00,
                                fr => 191.25, },
                         2 => { de => 74.00,
                                fr => 555.50, },
                       },
            );

my  %g2   = ( 2015 => [   { de => 177.00,
                            fr => 191.25, },
                          { de => 74.00,
                            fr => 555.50, },
                      ],
               2016 => [  { de => 177.00,
                            fr => 191.25, },
                          { de => 74.00,
                            fr => 555.50, },
                       ],
            );
