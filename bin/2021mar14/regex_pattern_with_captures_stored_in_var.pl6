#!/usr/bin/env perl6
# 
# regex_pattern_with_captures_stored_in_var.pl6            10 Mar 2021 

use v6;

{ #  From a code example in the "Parsing" book by Moritz Lenz, p. 48, section 5.2
   my $input = 'There are 9 million bicycles in beijing.'; 
   if $input ~~ / (\d+) \s+ (\w+) / {
       say $0.^name;  # Match
       say $0;        # ｢9｣
       say $1.^name;  # Match
       say $1;        # ｢million｣
       say $/; 
        # ｢9 million｣
        #  0 => ｢9｣
        #  1 => ｢million｣
   }
}

say '---';

{ # Moving the pattern to var which we interpolate into match
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <$pattern> / {
       say $0.^name;  # Nil
       say $0;        # Nil
       say $1.^name;  # Nil
       say $1;        # Nil
       say $/;        # ｢9 million｣
   }
}

## Posted question to perl6-users list:
# https://www.nntp.perl.org/group/perl.perl6.users/2021/03/msg9786.html
# 
# > Does this behavior make sense to anyone?  When you've got a regex
# > with captures in it, the captures don't work if the regex is
# > stashed in a variable and then interpolated into a regex.

say "===";

{ # A workaround via Brad Gilbert: make it a named capture
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <pattern=$pattern> / {
       say $0.^name;  # Nil
       say $0;        # Nil
       say $1.^name;  # Nil
       say $1;        # Nil
       say $/;
       # ｢9 million｣
       #   pattern => ｢9 million｣
       #     0 => ｢9｣
       #     1 => ｢million｣
   }
}

say "---";
# A Moritz Lenz, in email, suggests there's an alternate name for $/ to use
{ 
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <$pattern> / {
       # He seemed to be saying this would be the zeroth capture, but it isn't:
       say $pattern[0]; # rx{ (\d+) \s+ (\w+) }
   }
}


{ 
   my $input = 'There are 9 million bicycles in beijing.'; 
   my $pattern = rx{ (\d+) \s+ (\w+) };
   if $input ~~ / <pattern=$pattern> / {
       # Moritz Lenz was probably trying to say that this would work
       say $<pattern>[0]; # ｢9｣
       say $<pattern>[1]; # ｢million｣

   }
}

