#!/usr/bin/env perl6
# 
# paul_grammar_jsonish.raku            02 Jan 2022 

use v6.d;

grammar Test {
        rule TOP        { <object>                 }
        rule object     { <objectKey> <objectBody> }
        rule objectKey  { <cstr> ':'               }
        rule objectBody { '{' ~ '}' <item>+        }
        rule pair       { <cstr> '=' <value> ';'   }
        token cstr      { <alpha>+                 }
        token number    { <[0..9]>+                }
        token string    { '"' ~ '"' <-["]>+        }

        proto token item                { * };
              token item:sym<object>    { <object> }
              token item:sym<pair>      { <pair> }

        proto token value               { * };
              token value:sym<number>   { <number> }
              token value:sym<string>   { <string> }
}

class TestActions {

        method TOP($/) { make $<object>.made; }
        method object($/) { make $<objectKey>.made => $<objectBody>.made; }
        method objectBody($/) { make $<item>>>.made.hash.item; }
        method pair($/) { make $<cstr>.made => $<value>.made; }
        method objectKey($/)         { make $<cstr>.made; }
        method cstr($/)              { make ~$/; }
        method string($/)            { make ~$/; }
        method number($/)            { make ~$/; }

        method item:sym<pair>($/)    { make $<pair>.made; }
        method item:sym<object>($/)  { make $<object>.made; }
        method value:sym<number>($/) { make ~$/; }
        method value:sym<string>($/) { make ~$/; }
}


# ===
# Author:  doom@kzsu.stanford.edu

