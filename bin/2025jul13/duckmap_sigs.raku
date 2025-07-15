#!/usr/bin/env raku
# 
# duckmap_sigs.raku            15 Jul 2025 

use v6;

{
    <a b c 1 2 3>.duckmap(-> $_ where Int { $_ + 1 }).say;
}

{
    <a b c 1 2 3>.duckmap( (Int){ $_ + 1 }).say;
}
