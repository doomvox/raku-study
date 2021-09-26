#!/usr/bin/env perl6
# 
# file_io_array_pop.raku            26 Sep 2021 

use v6;

## Jeff question 

my $file = "/home/doom/tmp/tta.txt";

# IO::CatHandle.new(:bin, $file).slurp.say;

# my @array = IO::CatHandle.new(:bin, $file).slurp;
# say @array.elems; # 1
# say @array[0];
# say @array[0].pop(1);


my $z = $file.IO.slurp(:bin);
say $z.pop; # 10
say $z.pop; # 10

say $z.head(6).tail(1);  # (108)
say chr(108); # l

my @n = 0 .. 25;
for 0..24 --> $i { 
    say chr( $z.head($i).tail(1) );
}


# say @array[0].^method_names;
# (write-int8 
# write-int16 
# write-int32 
# write-int64 
# write-int128 
# write-uint8 
# write-uint16 
# write-uint32 
# write-uint64 
# write-uint128 
# write-num32 
# write-num64 
# write-bits 
# write-ubits 
# pop 
# shift 
# reallocate 
# splice 
# push 
# append 
# unshift 
# prepend 
# subbuf-rw 
# STORE 
# allocate 
# read-int8 
# read-int16 
# read-int32 
# read-int64 
# read-int128 
# read-uint8 
# read-uint16 
# read-uint32 
# read-uint64 
# read-uint128 
# read-num32 
# read-num64 
# read-bits 
# read-ubits 
# Capture 
# Numeric 
# Int 
# bytes 
# chars 
# decode 
# subbuf 
# reverse 
# COMPARE 
# SAME 
# join 
# unpack 
# contents 
# encoding 
# of 
# WHICH 
# AT-POS 
# ASSIGN-POS 
# list 
# new 
# EXISTS-POS 
# Bool 
# elems 
# Str 
# Stringy 
# gist 
# raku 
# ACCEPTS)

# ===
# Author:  doom@kzsu.stanford.edu

