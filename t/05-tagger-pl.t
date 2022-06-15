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
my $DEBUG = 1;
use Carp;
use Data::Dumper;
use File::Path      qw( mkpath );
use File::Basename  qw( fileparse basename dirname );
use File::Copy      qw( copy move );
use autodie         qw( :all mkpath copy move ); # system/exec along with open, close, etc
use Cwd             qw( cwd abs_path );
use Env             qw( HOME USER );
use List::Util      qw( first max maxstr min minstr reduce shuffle sum any );
use List::MoreUtils qw( zip uniq );
use String::ShellQuote qw( shell_quote );
use POSIX qw( ceil floor );

use FindBin qw( $Bin );

my $script_name = 'tagger.raku';
my $script_basename = basename( $script_name );

my $bin = "$HOME/End/Cave/RakuStudy/Wall/raku-study/bin/2022mar13/";

my $script = "$bin/$script_name";

ok(1, "If we made it this far, we're ok. All modules are loaded.");

{
  my $test_name = "Testing script $script_basename";


  my $file_lst = "file_list.lst";
  my $new_lst = "new_file_list.lst";
  my $find_cmd = "find `pwd` -type f > $file_lst";

  # tagger.raku  files_to_rename.lst  tag_string > files_after_renaming.lst
  my $cmd = "raku $script $lst xyz > $new_lst";


  my $result = qx{ $script_name };
  is( $result, $expected, "$test_name" )
}


done_testing();
