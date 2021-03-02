# Test file created outside of h2xs framework.
# Run this like so: `perl pcre_regex_to_append_path_non_redundantly.t'
#   doom@kzsu.stanford.edu     2021/03/01 17:10:09


## At the 2021feb28 SF Perl gathering, Lambert Lum posed a regex from hell question: 

# *** lambert lum: regex problem from hell
# **** 
# 298. [very hard] Given a line from /etc/sudoers, Write a regex
#      that will append /usr/local/bin to the secure_path line. Do
#      not append if /usr/local/bin is already present. The
#      secure_path line looks like this.


#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More;

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

ok(1, "If we made it this far, we're ok. All modules are loaded.");

#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.



done_testing();
