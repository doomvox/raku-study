#!/home/doom/End/Cave/Raku/bin/raku_gh

use v6.e.PREVIEW;

## hermann_hesse-demian-1919-pg74222.txt
my $str = "here were duty and guilt, evil conscience and confession, pardon and";

say $str.comb( 3 );
# (her e w ere  du ty  and  gu ilt , e vil  co nsc ien ce  and  co nfe ssi on,  pa rdo n a nd)

say $str.comb( 3 => 3 );
