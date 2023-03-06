#!/usr/bin/env raku
# 
# json_comparator_bruce_gray.raku            05 Mar 2023 

use v6;


sub MAIN ( $file1, $file2 ) {
    my @parsings = hyper map { from-json( slurp( $_ ) ) }, $file1, $file2;
    say @parsings[0] eqv @parsings[1]
        ?? 'Files contain identical JSON'
        !! 'Files contain different JSON';
}
