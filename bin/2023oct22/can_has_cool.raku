#!/usr/bin/env raku
# 
# can_has_cool.raku            22 Oct 2023 

use v6;



class MyWidget {
     has Numeric(Cool) $.size is rw;
}
