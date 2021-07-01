#!/usr/bin/env perl6
# 
# deepmap_bug_report.raku            30 Jun 2021 

use v6;

## subject: deepmap can mangle hash structures rather than just modify values

my @data = (
    { value => 1, name => 'alpha', },
    { value => 2, name => 'beta',  },
    { value => 3, name => 'gamma', },
    { value => 4, name => 'delta', },
);

my @exp = (
    { value => 11, name => 'alpha', },
    { value => 12, name => 'beta',  },
    { value => 13, name => 'gamma', },
    { value => 14, name => 'delta', },
);


my @new_data = @data.deepmap({$_ ~~ Numeric ?? $_+10 !! $_ });



# my @remunged = @level_color.deepmap({ say .raku; $_ ~~ Numeric ?? $_+12 !! $_ });
my @remunged = @level_color.deepmap({ $_+12 if $_ ~~ Numeric });

