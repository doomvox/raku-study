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

Speak::Monster -- exports speak routine for type Monster

=head1 SYNOPSIS

   use Speak::Monster; 
   speak('gozilla');

=head1 DESCRIPTION

Part of a demo of the way multidispatch based on subset types
with overlapping cases can produce varying behavior depending on
the order in which raku first sees a module used.

=head1 AUTHOR

Joseph Brenner, doomvox@gmail.com

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by Joseph Brenner

Released under "The Artistic License 2.0".

=end pod
                                                            
