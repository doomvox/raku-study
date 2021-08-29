#!/usr/bin/env perl6
# 
# lca_so_2.raku            22 Aug 2021 

use v6;

=begin pod

              A  
              |  
            -----
            |   |
            B   C
            |    
            D
            |
          -----  
          |   |  
          E   F  
              |  
              G

=end pod


{

    class A {};
    class B is A {};
    class C is A {};
    class D is B {};
    class E is D {};
    class F is D {};
    class G is F {};

    # G & F  => F 
    # E & F  => D
    # E & C  => A

    say G.^parents.map({ .gist }).first({ $_ === F.^mro.map({ .gist }).any });   # F
    say G.^parents.map({ .gist }).first({ $_ eq F.^mro.map({ .gist }).any });   # F
    say F.^parents.map({ .gist }).first({ $_ eq G.^mro.map({ .gist }).any });   # D
    say F.^mro.map({ .gist }).first({ $_ eq G.^mro.map({ .gist }).any });       # F

    say F.^mro>>.gist.first({ $_ eq G.^mro>>.gist.any });       # F
    say G.^mro>>.gist.first({ $_ eq F.^mro>>.gist.any });       # F

    say F.^mro>>.gist; # ((F) (D) (B) (A) (Any) (Mu))
    say F.^mro>>.gist[5];      # (Mu)
    say F.^mro>>.gist[5].WHAT; # (Str)

    say E.^mro>>.gist.first({ $_ eq F.^mro>>.gist.any });       # D
    say F.^mro>>.gist.first({ $_ eq E.^mro>>.gist.any });       # D

    say E.^mro>>.gist.first({ $_ eq C.^mro>>.gist.any });       # A
    say C.^mro>>.gist.first({ $_ eq E.^mro>>.gist.any });       # A

    # say F.^mro.grep({ ! ( $_ ~~ Mu ) });  # ()  *Everything* smart matches to Mu

    say "---";
    ## raiph solution without sub:
    say (E, |E.^parents).first: * === (C, |C.^parents).any;  # (A)

    ## raiph solution
    sub ancestors2 (\class) { class, |class.^parents };
    say E.&ancestors2.first: * === C.&ancestors2.any; # (A)

    say G.&ancestors2.first: * === F.&ancestors2.any; # (F)
}

{
    say "===";
#   class A {};
#   class B is A {};
#   class C is A {};
#   class D is B {};
#   class E is D {};
#   class F is D {};
#   class G is F {};

  sub is_parent ( $clobj1, $clobj2 ) {
      dd $clobj1;
      dd $clobj2;

      say $clobj1.^parents;
      say $clobj2.^parents;

      my $o1_any = $clobj1.^parents.any;
      my $o2_any = $clobj2.^parents.any;

      if $clobj1 === $o2_any {
          say "one!";
      }

      if $clobj2 === $o1_any {
          say "two!";
      }
  }

  is_parent( G, F );
  is_parent( G, C );

}



# ===
# Author:  doom@kzsu.stanford.edu

