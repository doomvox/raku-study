use v6;
use Test;

plan 2;

=begin description

This test explores a bug reported as issue NNNN.

=end description

my @data = (
    { n => 1, a => 'alpha', },
    { n => 2, a => 'beta',  },
    { n => 3, a => 'gamma', },
    { n => 4, a => 'delta', },
);

my @expected = ({a => 'alpha', n => 11}, {a => 'beta', n => 12}, {a => 'gamma', n => 13}, {a => 'delta', n => 14});

{
    my @new_data = @data.deepmap({$_ ~~ Numeric ?? $_+10 !! $_ });
    is-deeply( @new_data, @expected, "Testing with explicit handling of all values." ); 
}










