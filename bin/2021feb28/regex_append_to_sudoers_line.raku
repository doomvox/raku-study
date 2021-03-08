#!/usr/bin/env perl6
# 
# regex_append_to_sudoers_line.raku            28 Feb 2021 

use v6;

## using sysadmin tools that allow an input pattern and replace,
## but no other elements.  pcre, perl5 compatible (but crippled)

# 298. [very hard] Given a line from /etc/sudoers, 

#      Write a regex that will append /usr/local/bin to the secure_path line. 
#      Do not append if /usr/local/bin is already present. 
#      The secure_path line looks like this.

# Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin

# 'Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin' =>
# 'Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin',

# 'Defaults secure_path = /bin:/usr/local/bin:/root/bin' =>
# 'Defaults secure_path = /bin:/usr/local/bin:/root/bin',

## Something like replace \1:/usr/local/bin but only if it doesn't match already

my @cases = (
             [ 'Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin',
               'Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin',
               'Appends new path'],
             [ 'Defaults secure_path = /bin:/usr/local/bin:/root/bin',
               'Defaults secure_path = /bin:/usr/local/bin:/root/bin',
               'Declines to append because path is already in the MIDDLE'],
             [ 'Defaults secure_path = /bin:/root/bin:/usr/local/bin',
               'Defaults secure_path = /bin:/root/bin:/usr/local/bin',
               'Declines to append because path is already at the END'],
             [ 'Defaults secure_path = /usr/local/bin:/bin:/root/bin',
               'Defaults secure_path = /usr/local/bin:/bin:/root/bin',
               'Declines to append because path is already at the START'],

             );

say @cases;

my $label = 'Testing raku translation of perl regex';
for @cases -> $case {
     say '---';
     my ($input, $expected, $sublabel) = $case.values;
#      say $input;
#      say $expected;
#      say $sublabel;


     my $pattern =
     /
     ^
     (   # Begin capture
         <-[=]>*?  \=  \s+   # Begin after  'Defaults secure_path = '
         <!before              
             [  
               [ <-[:]>*? \: ]*       
               '/usr/local/bin' 
               [ \: | $ ]
             ]
           >   
         .*  ## matches *everything* but only if the negative lookahead does not match
     )   # End capture
     $
     /;

     my $append = ':/usr/local/bin';

     my $result = $input;
     $result
       ~~ s/$pattern/$0$append/ ;  ## does $0 work to embed the previous capture here?

     say "i watch dollar 0: ", $0;  # Nil
     say 'result: ', $result;

# use Test;
#     is( $result, $expected, "$label: $sublabel" );

## reference, the p5 regex I'm trying to convert here:
#       qr{
#           ^ 
#           (        # Capture to $1
#           [^=]*?   =  \s+   # Begin after  'Defaults secure_path = '
#           (?!       #  A zero-width negative lookahead assertion.
#             (?:     
#               [^:]* 
#               : 
#             )*       
#             /usr/local/bin
#             (?: 
#               :   | 
#               $    ) 
#           )
#           .*  ## matches *everything* but only if the negative lookahead does not match
#           )        # End $1 capture
#           $
#         }

}




{
    ## playing fragments above the above regex


    say "XXX = 666" ~~ '<-[=]>*? \s+ \=  \s+';  # False

#      ^
#      (   # Begin capture
#          <-[=]>*?  \=  \s+   # Begin after  'Defaults secure_path = '
#          <!before              
#              [  
#                [ <-[:]>*? \: ]*       
#                '/usr/local/bin' 
#                [ \: | $ ]
#              ]
#            >   
#          .*  ## matches *everything* but only if the negative lookahead does not match
#      )   # End capture
#      $

    }
