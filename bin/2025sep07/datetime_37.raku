#!/usr/bin/env raku
# 
# datetime_37.raku            07 Sep 2025 

use v6;

## https://www.nntp.perl.org/group/perl.perl6.users/2025/08/msg11493.html

# raku -e 'my $inst = now; put DateTime.new($inst).local, "\t", DateTime.new($inst.Int).local;'
# 2025-08-28T07:31:01.681240-04:00 2025-08-28T07:31:38-04:00

{
    my $inst = now;
    say
    DateTime.new($inst).local, "\n",
    DateTime.new($inst.Int).local, "\n";

    # 2025-09-07T16:51:31.888696-07:00
    # 2025-09-07T16:52:08-07:00

    # 1:31
    # 2:08

    ## yes: 37 seconds difference
}
{
    my $inst = now;
    say DateTime.new( $inst     ).local;
    say DateTime.new( $inst.Int ).local;

    say "===";
    my $a = $inst;
    my $b = $inst.Int;
    say $a - $b;
    # Instant:0.523749823

}
