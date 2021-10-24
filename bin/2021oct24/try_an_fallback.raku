#!/usr/bin/env perl6
# 
# try_an_fallback.raku            24 Oct 2021 

use v6;

sub some-fn {

}

my $default = 'godzilla';

my $ret = ((try some-fn) // $default);
say $ret;

# ===
# Author:  doom@kzsu.stanford.edu

