#!/usr/bin/env perl6
# 
# log_datestamp_crunching-bruce_gray.raku            10 Jul 2022 

use v6;

use DateTime::Parse;
my @L = "%*ENV<HOME>/T/d20220710/j22.txt".IO.lines.map: {
    my ( $do, @f ) = .split('|');
    DateTime::Parse.new( $do.subst('+0200', 'GMT') ).posix, $do, |@f[0,1,3];
}
for @L.rotor(3 => -2) {
    my ( @d, @do, @ip, @us, @ev ) := [Z] .list;
    next unless @ev eqv ( 'user logged in', 'user changed password', 'user logged off' );
    next unless @ip[0] eq @ip.skip.all;
    next unless @us[0] eq @us.skip.all;
    next unless abs(@d[0] - @d[2]) <= 1;
    say join "\t", (@do, @ip, @us)».[0];
}
