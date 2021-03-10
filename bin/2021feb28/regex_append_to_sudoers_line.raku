#!/usr/bin/env perl6
# 
# regex_append_to_sudoers_line.raku            28 Feb 2021 

use v6;
use Test;

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

{
    my $label = 'Testing raku translation of perl regex';
    for @cases -> $case {
        say '---';
        my ($input, $expected, $sublabel) = $case.values;

        my $pattern =
        rx{  ## even with braces (not slashes, rx//), still have to quote /usr/local/bin
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
        };

        my $append = ':/usr/local/bin';

        my $result = $input;
#         $result
#         ~~ s/$pattern/$0$append/ ;  ## does $0 work to embed the previous capture here? (( maybe not: it's Nil ))

#         $result
#         ~~ s/$pattern/$/$append/ ;  ## does $/ work?   Yes, it does.  (So, like, wtf?)
#                                     ## weird that it even parses:  $/ inside s///?

#         ## seems strange, but this works:
#         $result
#           ~~ s{$pattern} = "$/$append";  


         $result.subst( $pattern, "$/$append" ); # 
#         $result.subst( $pattern, $/.Str ~ $append ); # Use of Nil in string context

#        say "i watch dollar 0: ", $0;  # Nil
#        say 'result: ', $result;

        is( $result, $expected, "$label: $sublabel" );

    }


    ## reference, the original p5 regex we converted from:
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
