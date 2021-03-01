
## David Christsen's "bug.t" file.  See:
## https://mail.pm.org/pipermail/sanfrancisco-pm/2021-February/004769.html

use strict;
use warnings;
use Scalar::Util	qw( reftype );
use Test::More;

my $aref = [ 1, 2, 3 ];

my $aobj = bless [ 5, 6, 7 ], "MyArray::Class";

SKIP: {
     skip 'Requires Perl version 5.32.0 or newer', 3
	unless 5.032000 < $];

     eval q{
     	use experimental 'isa';
     	#use feature 'isa';
	# isa is experimental at (eval 8) line 5.
	# isa is experimental at (eval 8) line 7.
	# isa is experimental at (eval 8) line 11.

	is(($aref isa ARRAY), '', 'line ' .  __LINE__);

	is(($aobj isa MyArray::Class), 1, 'line ' . __LINE__);

	is(($aobj isa ARRAY), 1, 'line ' . __LINE__);
     };
     note $@ if $@;
}

is ref($aref), 'ARRAY', 'line ' . __LINE__;
is reftype($aref), 'ARRAY', 'line ' . __LINE__;
is UNIVERSAL::isa($aref, 'ARRAY'), 1, 'line ' . __LINE__;
is eval q{ $aref->isa('ARRAY') }, undef, 'line ' . __LINE__;
note sprintf "line %i: %s", __LINE__, $@;
isnt $@, '', 'line ' . __LINE__;

is ref($aobj), 'MyArray::Class', 'line ' . __LINE__;
is UNIVERSAL::isa($aobj, 'MyArray::Class'), 1, 'line ' . __LINE__;
is eval q{ $aobj->isa('MyArray::Class') }, 1, 'line ' . __LINE__;
is $@, '', 'line ' . __LINE__;

is reftype($aobj), 'ARRAY', 'line ' . __LINE__;
is UNIVERSAL::isa($aobj, 'ARRAY'), 1, 'line ' . __LINE__;
is eval q{ $aobj->isa('ARRAY') }, 1, 'line ' . __LINE__;
is $@, '', 'line ' . __LINE__;

done_testing;
