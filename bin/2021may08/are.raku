#!/usr/bin/env perl6
# 
# are.raku            08 May 2022 

use v6;

my @a = 1,3.2,'a',2e2;   #[1 3.2 a 200]
@a.are;                  #(Cool)

my @b = 1,3.2,2e2;	 #[1 3.2 200]
@b.are;			 #(Real)

my @c = <<1>>, 1, 3;	 #[1 1 3]
@c[0].^name;		 #IntStr
@c.are;			 #(Int)

my @d = <a b c>;	 #[a b c]
@d.are;			 #(Str)

@d.push: <<1>>;		 #[a b c 1]
@d[3].^name;		 #IntStr
@d.are;		 	 #(Str)

my $d = "2022-01-03".Date; #2022-01-03
@d.push: $d;		 #[a b c 1 2022-01-03]
@d.are;			 #(Any)

my @e = $d xx 4;	 #[2022-01-03 2022-01-03 2022-01-03 2022-01-03]
@e.are;			 #(Date)
