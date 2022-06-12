# Test file created outside of h2xs framework.
# Run this like so: `perl 05-tagger.t'
#   doom@kzsu.stanford.edu     2022/06/12 07:05:54

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

my $cmd = "raku /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku";
# tagger.raku  files_to_rename.lst  tag_string > files_after_renaming.lst

done_testing();
