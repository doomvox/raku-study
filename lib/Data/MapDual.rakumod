#                                doom@kzsu.stanford.edu
#                                26 Jun 2021
module Data::MapDual {

    sub dualmap ( $op, $ds1, $ds2 ) is export {
        ## Maybe: make sure both $d21 and $ds2 are defined at *this* level
        ## then internally allow them to be undef (easier with named args)
        my $dmd_obj = $Data::MapDual::Internal->new();
        $dmd_obj->dualmap( $op, d1 => $ds1, d2 => $ds2 );
        my $new_ds = $dmd_obj.new_ds;
        return $new_ds;
    }
 
}


class Data::MapDual::Internal {
    has $.new_ds is rw;
    has $.cursor is rw;

    ### want to allow undefs for all of the $d1, $d2... :U ?

    multi method dualmap( $op, Associative :$d1, Associative :$d2 ) {
        ## flatten associative into positional via uniq list of keys
        ## can then zip return with keys to get associative back?
    }
  
    multi method dualmap( $op, Positional :$d1, Positional :$d2 ) {
        ## loop over both positional args, hand off each pair to dualmap again
        my $lim = max( $d1.elems, $d2.elems );
        for 0 .. $lim -> $i {
            ## breakout as "qualify_pair"?
            my $t1 = $d1[ $i ].WHAT;
            my $t2 = $d2[ $i ].WHAT;
            my $n1 = $d1[ $i ] // .$t2.new;  ## ?
            my $n2 = $d2[ $i ] // .$t1.new; 
            self->dualmap( $op, d1 => $n1, d2 => $n2 );
        }

    }

    multi method dualmap( $op, Str :$d1, Str :$d2 ) {
        ## string handler
        my $ns = $d1 eq $d2 ?? $d1 !! $d1 ~ '|' ~ $d2

    }

    multi method dualmap( $op, Numeric :$d1, Numeric :$d2 ) {
    }

    multi method dualmap( $op,  :$d1,  :$d2 ) {
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
                                                            
