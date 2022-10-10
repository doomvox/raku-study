#!/usr/bin/env perl
#                                      2022/10/09 21:55:59

=head1 NAME

scopes_and_the_topic.pl

=head1 SYNOPSIS


=head1 DESCRIPTION

Stub documentation for scopes_and_the_topic.pl,
created by template.el.

It looks like the author of this script was negligent
enough to leave the stub unedited.

=cut

use 5.10.0;
use warnings;
use strict;
$|=1;
use Data::Dumper;


sub sideways {
    # gets the $_ from the outer scope
    my $mess = "n: $_ ";
    $_ = 'sideways assignment';  # also effects value in $_ in outer scope
    return $mess;
}

my @numbers  = < wuhn tew thuree >;
{
    $_ = "a message for the ages";
    my @N = map { sideways } @numbers;
    say @N; # n: wuhn n: tew n: thuree
    say $_; # a message for the ages

    ## Evidently, map blocks localize $_
}

say "===";
{
    $_ = "a message for the ages";
    sideways('hm');  # argument 'hm' is thrown away, does nothing
    say $_; # sideways assignment
    ## Assignment to $_ inside of the sub call effects $_ in outer scope
}

say "===";

sub straightahead {
    # gets the $_ from the outer scope
    my $mess = "n: $_ ";
    # local protects value of $_ in outer scope
    local $_ = 'sideways assignment';
    return $mess;
}


{
    $_ = "a message for the ages";
    straightahead('hm'); # argument 'hm' is thrown away, does nothing
    say $_; 
    # a message for the ages
}


sub simple_code {
   $_ = @_[0];
   s/(\w)$1+/$1/g;  # collapse repeated chars to one
   return $_;
}

{
  my $str = 
  
  my $new = simple_code( $str );

}


__END__

=head1 AUTHOR

Joseph Brenner, E<lt>doom@debian-BULLSEYE-live-builder-AMD64E<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2022 by Joseph Brenner

This program is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.0 or,
at your option, any later version of Perl 5 you may have available.

=cut
