#!/usr/bin/env perl6
# 
# strip_control_chars_from_utf8.pl6            07 Mar 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }


my $text = "Blah blah blah \x{c} bleh \t bleh and also 	(that's a literal)\n meep \b hey";


#  my @monsters = < garuda blob golem mothera godzilla tingler >;


## <cntrl> 	


