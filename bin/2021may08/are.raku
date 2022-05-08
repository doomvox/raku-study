#!/usr/bin/env perl6
# 
# are.raku            08 May 2022 

use v6;

my @a = 1,3.2,'a',2e2;   #[1 3.2 a 200]
say @a.are;                  #(Cool)

my @b = 1,3.2,2e2;	 #[1 3.2 200]
say @b.are;			 #(Real)

my @c = <<1>>, 1, 3;	 #[1 1 3]
say @c[0].^name;		 #IntStr
say @c.are;			 #(Int)

my @d = <a b c>;	 #[a b c]
say @d.are;			 #(Str)

@d.push: <<1>>;		 #[a b c 1]
say @d[3].^name;		 #IntStr
say @d.are;		 	 #(Str)

my $d = "2022-01-03".Date; #2022-01-03
say @d.push: $d;		 #[a b c 1 2022-01-03]
say @d.are;			 #(Any)

my @e = $d xx 4;	 #[2022-01-03 2022-01-03 2022-01-03 2022-01-03]
say @e.are;			 #(Date)


say "===";
my @z = Mu, True;
say @z.are
