#!/usr/bin/env raku
# 
# bl_of_eof.raku            18 May 2025 

use v6;

my $case1 = q:to/EOS1/;
Dummy text followed by blank lines

EOS1

my $case2 = 
  'Dummy text followed by no blank lines';

my $case3 = q:to/EOS1/;
Dummy text followed by three blank lines


EOS1



{
    say "case1: ", $case1 ~~ /^(.*?) [\n\n|$]/;
    say "case2: ", $case2 ~~ /^(.*?) [\n\n|$]/;
    # case1: ｢Dummy text followed by blank lines
    #
    # ｣
    #  0 => ｢Dummy text followed by blank lines｣
    # case2: ｢Dummy text followed by no blank lines｣
    #  0 => ｢Dummy text followed by no blank lines｣
}
{
    say "===";
    my $pat1 = '^(.*?) [\n\n|$]';
    say "case1: ", $case1 ~~ /<$pat1>/;
    say "case2: ", $case2 ~~ /<$pat1>/;

   # case1: ｢Dummy text followed by blank lines
   #
   # ｣
   # case2: ｢Dummy text followed by no blank lines｣
}
## TODO Q: why do these two styles differ *at all*?
## TODO Better to match two *or more* \n: '\n\n+'

{
    say "===";
    say "case1: ", $case1 ~~ /^(.*?) [\n\n+|$]/;
    say "case2: ", $case2 ~~ /^(.*?) [\n\n+|$]/;
    say "case3: ", $case3 ~~ /^(.*?) [\n\n+|$]/;
    # case1: ｢Dummy text followed by blank lines
    #    
    # ｣
    #  0 => ｢Dummy text followed by blank lines｣
    # case2: ｢Dummy text followed by no blank lines｣
    #  0 => ｢Dummy text followed by no blank lines｣
    # case3: ｢Dummy text followed by three blank lines
    #
    # 
    # ｣
    #  0 => ｢Dummy text followed by three blank lines｣

}


