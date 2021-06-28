#                                doom@kzsu.stanford.edu
#                                26 Jun 2021
module Data::MapDual {

    sub dualmap ( $op, $ds1, $ds2 ) is export {
        ## Maybe: make sure both $d21 and $ds2 are defined at *this* level
        ## then internally allow them to be undef (easier with named args)
        my $dmd_obj = $Data::MapDual::Internal.new();
        $dmd_obj->dualmap( $op, d1 => $ds1, d2 => $ds2 );
        my $new_ds = $dmd_obj.new_ds;
        return $new_ds;
    }
 
}


class Data::MapDual::Internal {
    has $.new_ds is rw;
    has $.cursor is rw;

    method qualify_dual( $e1, $e2 ) {
        my $t1 = $e1.WHAT;
        my $t2 = $e2.WHAT;
        my $n1 = $e1 // .$t2.new;  ## ?   Actually, $e2.new probably works as well.
        my $n2 = $e2 // .$t1.new; 
        return ($n1, $n2);
    }        

    ### dualmap: allow undefs for $d1, $d2... Using named args (defintely works)

    
    ## make up your mind about tracking the path ("cursor") and revising the "new_ds".
    ## each dualmap should return a new_value.
    ## the context where it's called knows where it should be stashed
    ## tracking the "cursor" unnecessary?
    ## maybe pass the current point as fourth argument
    ## binding operator to create an alias to the current point

    multi method dualmap( $op, Associative :$d1, Associative :$d2 ) {
        my $nv;
        ## flatten associative into positional via uniq list of keys
        my @keys = unique | $d1.keys, | $d2.keys;
        for @keys -> $k {
            my ( $n1, $n2 ) = self->qualify_dual( $d1{ $k }, $d2{ $k });
            my $val = self->dualmap( $op, d1 => $n1, d2 => $n2 );
            $nv{ $k } = $val;
        }
        return $nv;
    }

    multi method dualmap( $op, Positional :$d1, Positional :$d2 ) {
        my $nv;
        ## loop over both positional args, hand off each pair to dualmap again
        my $lim = max( $d1.elems, $d2.elems );
        for 0 .. $lim -> $i {
            my ( $n1, $n2 ) = self->qualify_dual($d1[ $i ], $d2[ $i ]);
            my $element = self->dualmap( $op, d1 => $n1, d2 => $n2 );
            push $nv, $element;
        }
        ## stash?
        return $nv;
    }

    multi method dualmap( $op, Str :$d1, Str :$d2 ) {
        ## string handler
        # my $n = $d1 eq $d2 ?? $d1 !! $d1 ~ '|' ~ $d2;

        my $n;
        if ($d1 eq $d2 ) {
            $n = $d1;
        } else {
            $n = $d1 ~ '|' ~ $d2;
        }

        ## put $n in the current point in the new data structure
        ## stash?
        return $n;
    }

    multi method dualmap( Str $op, Numeric :$d1, Numeric :$d2 ) {
        my $n;
        given $op {
            when '+' { 
                $n = $d1 + $d2
            }
            when '-' { 
                $n = $d1 - $d2
            }
            when '*' { 
                $n = $d1 * $d2
            }
            when '/' { 
                $n = $d1 / $d2
            }
            default {
                die "Don't understand operation: $op";
            }
        }
        ## stash?
        return $n;
    }

    ## the Code variation of numeric operations.  use $^a $^b
    multi method dualmap( Code $op, Numeric :$d1, Numeric :$d2 ) {
        my $n = $op($d1, $d2); ## ?
        ## stash?
        return $n;
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
                                                            
