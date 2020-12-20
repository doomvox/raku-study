#!/usr/bin/env perl6
# 
# issues_3851_native_call_and_c_ints.pl6            20 Dec 2020 


# Jeff is interested in this:
# https://stackoverflow.com/questions/59209789/using-void-structs-in-raku-via-nativecall

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

use v6.d;
use NativeCall;
class simple is repr('CStruct') {
    has uint16 $.value;
}

my $simple = simple.new(:value(0xffff));
say "BROKEN!" if $simple.value ≠ 0xffff;



