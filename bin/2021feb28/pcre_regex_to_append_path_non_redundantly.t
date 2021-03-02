#!/usr/bin/env perl
# perl pcre_regex_to_append_path_non_redundantly.t
#           doom@kzsu.stanford.edu     2021/03/01 17:10:09

## At the 2021feb28 SF Perl gathering, Lambert Lum posed a regex from hell question: 

# 298. [very hard] Given a line from /etc/sudoers, Write a regex
#      that will append /usr/local/bin to the secure_path line. Do
#      not append if /usr/local/bin is already present. The
#      secure_path line looks like this.

#    Defaults    secure_path = /sbin:/bin:/usr/sbin:/usr/bin

# The context is a third party tool that takes a PCRE perl5-style regex
# and a replacement string as two arguments.

# The replace string will be something like
#   \1:/usr/local/bin 

# Two examples of input and output:

# 'Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin' =>
# 'Defaults secure_path = /sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin',

# 'Defaults secure_path = /bin:/usr/local/bin:/root/bin' =>
# 'Defaults secure_path = /bin:/usr/local/bin:/root/bin',

use Test::More;

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

ok(1, "If we made it this far, we're ok. All modules are loaded.");

# Yary Hluchan's answer:
#   s~^(?!(?:\s*[^:]*:)*/usr/local/bin(?:\s+|:|$)).*\K$~:/usr/local/bin~ 

# for each case, an input string, an expected result, and a description
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
             [ 'Defaults secure_path = ',
               'Defaults secure_path = :/usr/local/bin',  # Edge case- leading colon is arguable
               'Appends to empty line'],
             [ 'Defaults secure_path = /usr/local/bin',
               'Defaults secure_path = /usr/local/bin',
               'Declines to append because path is already EQUAL'],
             [ 'Defaults secure_path = /usr/local/bind',
               'Defaults secure_path = /usr/local/bind:/usr/local/bin',
               'Appends because path is "bind" not "bin"'],
             [ 'Defaults secure_path = /another/usr/local/bin',
               'Defaults secure_path = /another/usr/local/bin:/usr/local/bin',
               'Appends because path starts with "/another" not "/usr"'],
            );
{
  my $label = "Testing Yary solution";
  foreach my $case (@cases) {
    my ($input, $expected, $sublabel) = @{ $case };

    (my $result = $input) 
      =~ s~^(?!(?:\s*[^:]*:)*/usr/local/bin(?:\s+|:|$)).*\K$~:/usr/local/bin~ ;

    is( $result, $expected, "$label: $sublabel" );
  }
}

say "===";
## Expanded formating of Yary's solution (/x), with a few fixes:

## What is \K?
##  \K        [6]  Keep the stuff left of the \K, don't include it in $&
## That's key to this solution: the replace is *appended*, nothing that's
## matched is removed by the s///

## Another key element is the negative lookahead assertion that fails
## if there's already a /usr/local/bin entry

## TODO  is \K supported by PCRE?

{ my $label = "Testing variant solution";
  foreach my $case (@cases) {
    my ($input, $expected, $sublabel) = @{ $case };

    my $replace = ':/usr/local/bin';

    ## Effectively:
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

say "===";
## Can that solution be made to work without \K?

{ my $label = "Testing sans \K solution";
  foreach my $case (@cases) {
    my ($input, $expected, $sublabel) = @{ $case };

    ## A pattern that matches the entire string, but only if 
    ## there's no /usr/local/bin already 
    my $pattern =
      qr{
          ^ 
          (        # Capture to $1
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
#          \K  ## keeps *everything*, prevents s/// from removing anything from the existing string
          )        # End $1 capture
          $
      }x;

    # replace leads with \1: here we have to capture what we want to keep
    # (( BUT \1 is a literal if quoted ))
    # my $replace = '\1:/usr/local/bin';

    my $append = ':/usr/local/bin';
    (my $result = $input) 
      =~
      s{ $pattern }{\1$append}x ;

    is( $result, $expected, "$label: $sublabel" );
  }
}

say '===';
{
  ## Just showing the way the "sans \K solution" looks without \x formatting
  my $label = 'Demo without \x';
  foreach my $case (@cases) {
    my ($input, $expected, $sublabel) = @{ $case };

    my $pattern =
      qr{^([^=]*?=\s+(?!(?:[^:]*:)*/usr/local/bin(?::|$)).*)$};

    (my $result = $input) 
      =~ s{$pattern}{\1:/usr/local/bin} ;

    is( $result, $expected, "$label: $sublabel" );
  }
}



# Also see:
#  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb28/regex_append_to_sudoers_line.raku

# say "===";
# ## NOT WORKING
# ## Curious about whether it could be done without \K via
# ## multiple (overlapping?) zero-width matches.
# ## Contradictory: can't have a zero-width match that replaces *at the end*
# { my $label = 'Testing sans \K solution';
#   foreach my $case (@cases) {
#     my ($input, $expected, $sublabel) = @{ $case };

#     my $replace = ':/usr/local/bin';

#     ## Trying to use zero-width positive wrappers to get 
#     ## a zero-width pattern *without* using \K
#     my $pattern =
#       qr{
#           (?=                 # zero-width positive lookahead
#             ^ 
#             [^=]*?   =  \s+   # Begin after  'Defaults secure_path = '
#             (?!               # A zero-width negative lookahead assertion.
#               (?:     
#                 #            \s*      # not needed?
#                 [^:]* 
#                 : 
#               )*       
#               /usr/local/bin
#               (?: 
#                 #            \s+ |   #  not needed
#                 :   | 
#                 $    ) 
#             )
#             .*  ## matches *everything* but only if the negative lookahead does not match
#             $
#           )
#        # $  ## with $ outside the zero-width, it fails to match at all (?)
#       }x;

#     (my $result = $input) 
#       =~
#       s{ $pattern }{$replace}x ;

#     is( $result, $expected, "$label: $sublabel" );
#   }
# }

done_testing();

# # Also see:
# #  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb28/regex_append_to_sudoers_line.raku
