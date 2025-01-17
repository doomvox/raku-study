#!/usr/bin/env raku
# 
# mah_deepmap_crapola.raku            12 Jan 2025 

use v6;


    proto method deepmap(|) is nodal {*}
    multi method deepmap(Associative:D: &op) {
        self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE
    }
    multi method deepmap(&op) {
        my $source := self.iterator;
        my \buffer := nqp::create(IterationBuffer);
        my $pulled := $source.pull-one;

        sub deep(\value) is raw { my $ = value.deepmap(&op) }


        nqp::until(
          nqp::eqaddr($pulled,IterationEnd),
          nqp::handle(
            nqp::stmts(
              (my $value := nqp::if(
                nqp::istype($pulled,Iterable) && $pulled.DEFINITE,
                deep($pulled),
                op($pulled)
              )),
              nqp::if(
                nqp::istype($value,Slip),
                $value.iterator.push-all(buffer),
                nqp::push(buffer,$value)
              ),
              ($pulled := $source.pull-one)
            ),
            'NEXT', nqp::stmts(
              nqp::unless(
                nqp::isnull($value := nqp::getpayload(nqp::exception)),
                nqp::if(
                  nqp::istype($value,Slip),
                  $value.iterator.push-all(buffer),
                  nqp::push(buffer,$value)
                ),
              ),
              ($pulled := $source.pull-one)
            ),
            'REDO', nqp::null,
            'LAST', nqp::stmts(
              nqp::unless(
                nqp::isnull($value := nqp::getpayload(nqp::exception)),
                nqp::if(
                  nqp::istype($value,Slip),
                  $value.iterator.push-all(buffer),
                  nqp::push(buffer,$value)
                ),
              ),
              ($pulled := IterationEnd)
            )
          ),
          :nohandler
        );
        nqp::p6bindattrinvres(
          nqp::if(nqp::istype(self,List),self,List).new, # keep subtypes of List
          List,'$!reified',buffer
        )
    }

# insteaf of:

#     multi method deepmap(Associative:D: &op) {
#         self.new.STORE: self.keys, self.values.deepmap(&op), :INITIALIZE
#     }


## Try something like this (but no containers, no assignment, nqp::yaddah):
## oh, and s/deepmap/dopemap/ everywhere, if you're going to work on a manual branch like this.
     multi method deepmap(Associative:D: &op) {
         my @keys, @values;
         for self.pairs -> $p {
             @keys.push($p.keys),
             @values.push($p.values.deepmap(&op));
         }
         self.new.STORE: @keys, @values, :INITIALIZE
     }

     ## But the trouble may not be in making sure the keys and values get
     ## zipped together, it could be in the handling of empties.
     ## E.g. if you can deepmap a value that turns into one of Raku's many and various Non-Values
     ## does the Non-Value act as a placeholder?
     ## It might be a "losing your place when nothing's there and grabbing the next" issue
     ## (There's a lot to like about perl's 'undef'.)
     
