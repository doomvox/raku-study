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

             )

say @cases;

exit;

{ my $label = "Testing variant solution";
  foreach my $case (@cases) {
    my ($input, $expected, $sublabel) = @{ $case };

    my $replace = ':/usr/local/bin';

    ## a zero-width pattern that matches only if there's 
    ## no /usr/local/bin already in the given string
    my $pattern =
      qr{
          ^ 
          [^=]*?   =  \s+   # Begin after  'Defaults secure_path = '
          (?!       #  A zero-width negative lookahead assertion.
            (?:     
              #            \s*      # not needed?
              [^:]* 
              : 
            )*       
            /usr/local/bin
            (?: 
              #            \s+ |   #  not needed
              :   | 
              $    ) 
          )
          .*  ## matches *everything* but only if the negative lookahead does not match
          \K  ## keeps *everything*, prevents s/// from removing anything from the existing string
          $
      }x;

    (my $result = $input) 
      =~
      s{ $pattern }{$replace}x ;

    is( $result, $expected, "$label: $sublabel" );
  }
}







## Also see:
##  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb28/pcre_regex_to_append_path_non_redundantly.t
