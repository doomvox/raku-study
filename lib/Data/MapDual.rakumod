#                                doom@kzsu.stanford.edu
#                                26 Jun 2021
module Data::MapDual {

    sub dualdeepmap ( $op, $ds1, $ds2 ) is export {
        my $dmd_obj = $Data::MapDual::Internal->new();
        $dmd_obj->dualdeepmap( $op, $ds1, $ds2 );
        my $new_ds = $dmd_obj.new_ds;
        return $new_ds;
    }
 
}


class Data::MapDual::Internal {
    has $.new_ds is rw;
    has $.ds_cursor is rw;

    ### want to allow undefs for all of the $d1, $d2... :U ?

    multi method dualdeepmap( $op, Associative $d1, Associative $d2 ) {
    }
  
    multi method dualdeepmap( $op, Positional $d1, Positional $d2 ) {
    }

    multi method dualdeepmap( $op, Str $d1, Str $d2 ) {
    }

    multi method dualdeepmap( $op, Numeric $d1, Numeric $d2 ) {
    }

    multi method dualdeepmap( $op,  $d1,  $d2 ) {
        die "Don't know what to do with the two data inputs. " ~
        "operation: " ~ $op.gist ~
        "d1: " ~ $d1.gist ~
        "d2: " ~ $d2.gist ~
        "d1 type:" ~ $d1.^name ~  
        "d2 type:" ~ $d2.^name   ;
    }

}


=begin pod

=head1 NAME

Data::MapDual - map utilities for two parallel data structures

=head1 SYNOPSIS

   use Data::MapDual; 

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
                                                            
