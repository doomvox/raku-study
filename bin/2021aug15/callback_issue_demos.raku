#!/usr/bin/env perl6
# 
# callback_issue_demos.raku            15 Aug 2021 

use v6;

{
  my $string_thing_0  = sub {
      return "$^a | $^b";
#      return "$^b | $^a";
    };  
  say $string_thing_0('hey ', 'there'); # hey  | there
}

{
  my $string_thing_1  =  {  ## not a sub, a block
      "$^a | $^b";          ## can't use return
    };  
  say $string_thing_1('hey ', 'there'); # hey  | there
}

{
  my &string_thing_2  =  {  ## sigil & not $    ## sometimes barfs pointing at this line: WEIRD  (( *stopped working?* ))
      "$^a | $^b";          ## 
    };  
  # both of these forms work
  say &string_thing_2('hey ', 'there'); # hey  | there
  say string_thing_2('hey ', 'there');  # hey  | there

  say gerund_eater( &string_thing_2 );  # al | pha
  sub gerund_eater ($thing) {
      return $thing.('al', 'pha');
  }

##   say gerund_eater( string_thing_2 );  # al | pha
##   # Too few positionals passed; expected 2 arguments but got 0

}

say "===";

{
#  my $string_thing_from_beyond_the_grave  =   { (  $^a eq $^b  ) ??  $^a !! "$^a - $^b" }
  my $string_thing_from_beyond_the_grave  =   { (  $^a eq $^b  ) ??  $a !! "$a - $b" }
  say $string_thing_from_beyond_the_grave.('hey', 'hey'); # hey
  say $string_thing_from_beyond_the_grave.('hey', 'not_a_hey'); # hey - not_a_hey

}

say "===";

{
  my $string_thing_3  =  sub {  
      my $ret;
      say "here we go";
      if  $^a eq $^b  { # now we have $a and $b
          $ret = $a;
      } else {
          $ret = $a ~ $b;
      }
      return $ret;
    };  
  # say $string_thing_3.('hey', 'hey'); #   WEIRD: True   (wtf?)
  say $string_thing_3.('hey', 'not_a_hey'); # 
  say "what??";

  # Too few positionals passed; expected 2 arguments but got 0
  #   in block  at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021aug15/callback_issue_demos.raku line 23  (( not 46? ))
}

#  /https://github.com/doomvox/raku-study/tree/main/bin/2021aug15/callback_issue_demos.raku

{
  my $string_thing_4  =  sub ($a, $b) {  
      return do 
      if  $a eq $b  { # now we have $a and $b
          $a;
      } else {
          $a ~ $b;
      };
    };  
  say $string_thing_4.('hey', 'yaddah'); #  heyyaddah
}


## Bruce Gray steps through how this works:

## These forms are equivalent:

# 15:41:31	 From Bruce Gray : my $s = { $^a + $^b };
# 15:42:26	 From Bruce Gray : my $s =              { $^a + $^b };
# 15:42:36	 From Bruce Gray : my $s = sub ($a, $b) {  $a +  $b };
# 15:42:56	 From Bruce Gray : my $s =   -> $a, $b  {  $a +  $b };

## He makes the point it's useful to use pointy blocks in an if:

# 15:43:29	 From Bruce Gray : if big_func($foo) -> $saved_val { … }

## Similar to the perlish:

# 15:44:30	 From Bruce Gray : if ( my $saved = big_func($foo) ) {  … }

# 15:46:39	 From Bruce Gray : if $^a eq $^b    -> $a { $ret = $a }
