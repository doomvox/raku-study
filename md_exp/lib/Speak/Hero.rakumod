#                                doom@kzsu.stanford.edu
#                                29 Sep 2021

module Speak::Hero {
    my @heroes    = < godzilla  beowulf   ultraman  inframan >;
    subset Hero of Str where { $_ eq any( @heroes ) };

    multi sub speak (Hero $name) is export {
        say "The hero, $name shouts!";
    }
}


=begin pod

=head1 NAME

Speak::Hero - TODO add short description

=head1 SYNOPSIS

   use Speak::Hero; 

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
                                                            
