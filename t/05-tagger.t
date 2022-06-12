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
use Env qw( HOME );

ok(1, "If we made it this far, we're ok. All modules are loaded.");

my $lst = "file_list.lst";
my $find_cmd = "find `pwd` -type f > $lst";

my $pgm = "$HOME/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/tagger.raku";
# tagger.raku  files_to_rename.lst  tag_string > files_after_renaming.lst
my $cmd = "raku $prm $lst xyz > 

done_testing();
