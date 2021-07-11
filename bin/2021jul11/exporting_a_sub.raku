#!/usr/bin/env perl6
# 
# exporting_a_sub.raku            10 Jul 2021 

use v6;

# from the docs for "is export" trait:

module Foo {
    sub double($x) is export {
        2 * $x
    }
}

import Foo;         # makes sub double available
say double 21;      # 42  (( Works ))


use lib $*PROGRAM.parent.add('../lib');
import Data::Stub;
whuhn;
