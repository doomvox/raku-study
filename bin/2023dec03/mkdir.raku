#!/usr/bin/env raku
# 
# mkdir.raku            30 Nov 2023 

use v6;

## Checking that with Raku's "mkdir", it does not complain if the directory exists already.
my $t = "/home/doom/tmp/YetAnotherDamnTestLocationToMessWith";
{
    my $io_path_obj = mkdir( $t );
    dd( $io_path_obj );
}
say "===";
{
    say "Let's try that again...";
    my $io_path_obj = mkdir( $t );
    dd( $io_path_obj );
}
say "===";

my $file = "/home/doom/tmp/Alpha/Widget";
spurt( $file );  # create $file without text
mkdir( $file );

# Failed to create directory '/home/doom/tmp/Alpha/Widget' with mode '0o777': Failed to mkdir: File exists
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2023dec03/mkdir.raku line 23


## Usual use of "spurt":
## $file.IO.spurt( $text );


## perl5
##  mkdir( $d ) unless -d $d;
