#!/usr/bin/env raku
# 
# /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/DeepMap/dopemop.raku
##  12 Jan 2025 


## STATUS: a 'manual branch' cut-and-paste of core code that I haven't done much with.
## 
## From: /home/doom/End/Cave/Raku/Wall/rakudo/src/core.c/Any-iterable-methods.pm6
##
## renamed 'deepmap' as 'dopemop'

## Doesn't compile?

# ===SORRY!===
# Variable '@values' is not declared.  Did you mean '&values'?
# at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/DeepMap/dopemop.raku:85

# Oh right: defining methods without a class, duh..

## But that compile error is different, doesn't like my lexical array in nqp code

use v6;
use nqp;

use MONKEY-TYPING;
augment class Any {


    proto method dopemop(|) is nodal {*}
    multi method dopemop(Associative:D: &op) {
        self.new.STORE: self.keys, self.values.dopemop(&op), :INITIALIZE
    }
    multi method dopemop(&op) {
        my $source := self.iterator;
        my \buffer := nqp::create(IterationBuffer);
        my $pulled := $source.pull-one;

        sub deep(\value) is raw { my $ = value.dopemop(&op) }


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

#     multi method dopemop(Associative:D: &op) {
#         self.new.STORE: self.keys, self.values.dopemop(&op), :INITIALIZE
#     }


## Try something like this (but no containers, no assignment, nqp::yaddah):

     multi method dopemop(Associative:D: &op) {
         my @keys;
         my @values;
         for self.pairs -> $p {
             @keys.push($p.keys),
#             @values.push($p.values.dopemop(&op));
             @values.push($p.values.dopemop(&op) // '');
          }
         self.new.STORE: @keys, @values, :INITIALIZE
     }

     ## But the trouble may not be in making sure the keys and values get
     ## zipped together, it could be in the handling of empties.
     ## E.g. if you can deepmap a value that turns into one of Raku's many and various Non-Values
     ## does the Non-Value act as a placeholder?
     ## It might be a "losing your place when nothing's there, just grabbing the next thing" issue
     ## (There's a lot to like about perl's 'undef'.)
     

}


my @data = (
    { n => 1, a => 'alpha', },
    { n => 2, a => 'beta',  },
    { n => 3, a => 'gamma', },
    { n => 4, a => 'delta', },
);

{
    my @new_data = @data.deepmap({ $_+10 if $_ ~~ Numeric });
    say @new_data;

    ## explicit @keys and @values didn't help
    ## [{a => 11, n => IterationEnd} {a => 12, n => IterationEnd} {a => 13, n => IterationEnd} {a => IterationEnd, n => 14}]

}
