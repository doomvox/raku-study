#!/usr/bin/env raku
# 
# bruce_problemette_flips_but_not_flipism.raku            15 Feb 2026 

use v6;

my $sth = q:to/END_DATA/;
ABC ADE AGF BDF BEG CDG CFE
ABC ADE AGF BDF BEG CDG EFC
ABC ADE AGF BDF BEG GDC CFE
ABC ADE AGF BDF BEG GDC EFC
END_DATA



my $a = <ABC ADE AGF BDF BEG CDG CFE>;
