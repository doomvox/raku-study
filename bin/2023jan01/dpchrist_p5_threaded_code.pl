#!/usr/bin/env perl
#                                      2023/01/01 22:09:58

=head1 NAME

dpchrist_p5_threaded_code.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for dpchrist_p5_threaded_code.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;

use threads::shared;
my $thing :shared; 
my $thang;

doingstuff( $thing );

sub doingstuff {
    local $_ = shift;

    }



doingstuff( $thang );

