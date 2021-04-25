#!/usr/bin/env perl6
# 
# bm_named_args.raku            25 Apr 2021 

use v6;

sub genius(*%fried) { say %fried };
# genius( ha => 1, ho => 2, hum => 3 );
# ## Output: {ha => 1, ho => 2, hum => 3}

genius( ha => 1, ho => 2, hum => 3 );

{ha => 1, ho => 2, hum => 3}

# genius( {ha => 1}, {ho => 2}, {hum => 3} ); ## series of three hashes

## Too many positionals passed; expected 0 arguments but got 3
## in sub genius at <unknown file> line 1
## in block <unit> at <unknown file> line 1



genius( fred => {ha => 1}, george => {ho => 2}, ginger => {hum => 3} ); ## series of three hashes
