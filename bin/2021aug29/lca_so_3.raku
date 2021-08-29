#!/usr/bin/env perl6
# 
# lca_so_3.raku            29 Aug 2021 

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

    sub LCA( Mu:U $a, Mu:U $b --> Mu:U ) {
        ($a, |$a.^parents).first: * === ($b, |$b.^parents).any;
    }

}

say LCA(F, G);  # (F)
say LCA(E, F);  # (D)
say LCA(E, G);  # (D)




