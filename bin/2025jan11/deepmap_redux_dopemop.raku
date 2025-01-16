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


## Try something like this:

     multi method deepmap(Associative:D: &op) {
         my @keys, @values;
         for self.pairs -> $p {
             @keys.push($p.keys),
             @values.push($p.values.deepmap(&op));
         }
         self.new.STORE: @keys, @values, :INITIALIZE
     }
