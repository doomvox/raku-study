#                                doom@kzsu.stanford.edu
#                                15 Nov 2020

module PlusMine {
    enum Sign is export ( plus => 1, minus => -1 );
    state Sign $sign = plus;

    sub plusmine_reset ( $val = plus )  is export {
        $sign = $val;
    }

    sub plusmine ( Num(Cool) $a, Num(Cool) $b ) is export {
        my $result  = $a + ($sign * $b);
        $sign = plusmine_flip( $sign );
        return $result;
    }

    sub plusmine_flip ( Sign $flag ) is export {
        my $newflag = plus;
        $newflag = minus if $flag == plus;
        return $newflag;
    }

    multi infix:<±> ( Num(Cool) $a, Num(Cool) $b ) is export { plusmine( $a, $b ) };
    # With this, using the operator with one arg, like so can do a reset:
    #    plus±;
    # This is a fun experiment, but it's readability is poor.
    multi postfix:<±> ( Sign $a ) is export { plusmine_reset( $a ) };
}



=begin pod

=head1 NAME

PlusMine - experimental operator that alternates between + and - each time it's called

=head1 SYNOPSIS

   use PlusMine; 

   say 3±2; # 5
   say 3±2; # 1
   say 3±2; # 5
   say 3±7; # -4
   say 3±7; # 10
   plusmine_reset( plus ); # without this, the next usage would be a minus
   say 3±7; # 10


=head1 DESCRIPTION

Defines the module PlusMinus with an automatically exported operator "±"
that does plus or minus alternately each time it's called.

Uses a state variable to record whether + or - will be done next.

Exports the two state enum Sign that defines plus and minus as 1 and -1.

Exports a plusmine_reset that can be used to force the next call to + or -,
defaulting to +.  

=head2 LIMITATION

The use of a state variable has an unfortunate limitation-- if
the code is used in more than one place a race condition could
make it hard to predict what the operator will do.

An object oriented implementation with individual state for each 
instance might be more sensible. (An operator factory class?)

=head1 MOTIVATION

I was thinking about the formula for the determinant of a matrix, 
where each term is alternately added or subtracted.

=head1 NOTES

=head1 AUTHOR

Joseph Brenner, doomvox@gmail.com

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2020 by Joseph Brenner

Released under "The Artistic License 2.0".

=end pod
                                                            
