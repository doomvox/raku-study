# Test file created outside of h2xs framework.
# Run this like so: `perl pcre_regex_to_append_path_non_redundantly.t'
#   doom@kzsu.stanford.edu     2021/03/01 17:10:09


## At the 2021feb28 SF Perl gathering, Lambert Lum posed a regex from hell question: 

# 298. [very hard] Given a line from /etc/sudoers, Write a regex
#      that will append /usr/local/bin to the secure_path line. Do
#      not append if /usr/local/bin is already present. The
#      secure_path line looks like this.


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




done_testing();



# Also see:
#  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021feb28/regex_append_to_sudoers_line.raku
