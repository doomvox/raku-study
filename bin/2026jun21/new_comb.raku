#!/home/doom/End/Cave/Raku/bin/raku_gh

use v6.e.PREVIEW;

## hermann_hesse-demian-1919-pg74222.txt
my $str = "here were duty and guilt, evil conscience and confession, pardon and";

say $str.comb( 3 );
# (her e w ere  du ty  and  gu ilt , e vil  co nsc ien ce  and  co nfe ssi on,  pa rdo n a nd)

say $str.comb( 3 => 3 );
# (her ere ty   gu , e  co ien and nfe on, rdo)

say $str.comb( 3 => -2 );
# (her ere re  e w  we wer ere re  e d  du dut uty ty  y a  an and nd  d g  gu gui uil ilt lt, t,  , e  ev evi vil il  l c  co con ons nsc sci cie ien enc nce ce  e a  an and nd  d c  co con onf nfe fes ess ssi sio ion on, n,  , p  pa par ard rdo don on  n a  an and)

say "===";
say $str.comb( 3 => -3 );
