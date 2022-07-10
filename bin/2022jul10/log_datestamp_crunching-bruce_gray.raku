#!/usr/bin/env perl6
# 
# log_datestamp_crunching-bruce_gray.raku            10 Jul 2022 

use v6;

# my $data_file = "/T/d20220710/j22.txt";
## TODO clean up path for portablity
my $data_file = "/home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022jul10/dat/somedata.log";

use DateTime::Parse;
my @L = $data_file.IO.lines.map: {
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


# Mon, 22 Aug 2016 13:15:39 +0200	178.57.66.225	fxsciaqulmlk
# Mon, 22 Aug 2016 13:15:59 +0200	178.57.66.205	erdsfsdfsdf
# Mon, 22 Aug 2016 13:19:19 +0200	178.56.66.225	fxsciaqulmla
