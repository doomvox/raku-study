#                                doom@kzsu.stanford.edu
#                                29 Sep 2021
module Speak::Knockoff  {
    my @knockoffs = < gammera   inframan  thorndike >;
    subset Knockoff   of Str where { $_ eq any( @knockoffs ) };  

    multi sub speak (Knockoff $name)  is export {
        say "The knockoff, $name slinks away...";
    }
}


=begin pod

=head1 NAME

Speak::Knockoff -- exports speak routine for type Knockoff

=head1 SYNOPSIS

   use Speak::Rakumod; 
   speak('inframan');

=head1 DESCRIPTION

Part of a demo of the way multidispatch based on subset types
with overlapping cases can produce varying behavior depending on
the order in which raku first sees a module used.




=head1 MOTIVATION

=head1 NOTES

=head1 AUTHOR

Joseph Brenner, doomvox@gmail.com

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by Joseph Brenner

Released under "The Artistic License 2.0".

=end pod
                                                            
