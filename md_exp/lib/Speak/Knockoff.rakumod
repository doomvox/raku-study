#                                doom@kzsu.stanford.edu
#                                29 Sep 2021
module Speak::Knockoff  {
    my @knockoffs = < gammera   inframan  rocky >;
    subset Knockoff   of Str where { $_ eq any( @knockoffs ) };  

    multi sub speak (Knockoff $name)  is export {
        say "The knockoff, $name slinks away...";
    }
}


=begin pod

=head1 NAME

Speak::Rakumod - TODO add short description

=head1 SYNOPSIS

   use Speak::Rakumod; 

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
                                                            
