#                                doom@kzsu.stanford.edu
#                                29 Sep 2021
module Speak::Monster {
    my @monsters  = < godzilla  gammera   ghidora   golem    >;
    subset Monster of Str where { $_ eq any( @monsters ) };

    multi sub speak (Monster $name) is export {
        say "The monster, $name roars!";
    }
}


=begin pod

=head1 NAME

Speak::Monster - TODO add short description

=head1 SYNOPSIS

   use Speak::Monster; 

   # TODO fill in


=head1 DESCRIPTION

=head1 MOTIVATION

=head1 NOTES

=head1 AUTHOR

Joseph Brenner, doomvox@gmail.com

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by Joseph Brenner

Released under "The Artistic License 2.0".

=end pod
                                                            
