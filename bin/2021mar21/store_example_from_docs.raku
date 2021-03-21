#!/usr/bin/env perl6
# 
# store_example_from_docs.raku            21 Mar 2021 

use v6;

#  my @monsters = < garuda blob golem mothera godzilla tingler >;

## Bill had trouble with this example:
##  https://docs.raku.org/routine/STORE
## See issue:
##  https://github.com/Raku/doc/issues/3824


## CAUGHT: This type cannot unbox to a native string: P6opaque, Seq

class DNA {
    has $.chain is rw;
 
    method STORE ($chain where {
                         $chain ~~ /^^ <[ACGT]>+ $$ / and
                         $chain.chars %% 3
                     }, :$INITIALIZE --> DNA) {
        if $INITIALIZE {
            self = DNA.new( chain => $chain )
        } else {
            self.chain = $chain;
            self
        }
    }
 
    method Str(::?CLASS:D:) { return $.chain.comb.rotor(3) }
};
 
my @string is DNA = 'GAATCC';
say @string.Str;    # OUTPUT: «((G A A) (T C C))␤» 
@string = 'ACGTCG';
say @string.Str;    # OUTPUT: «((A C G) (T C G))␤» 


