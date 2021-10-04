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

Speak::Hero - exports speak routine for type Hero

=head1 SYNOPSIS

   use Speak::Hero; 
   speak('ultraman');

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
                                                            
