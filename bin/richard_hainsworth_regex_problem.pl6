#!/usr/bin/env perl6
# 
# richard_hainsworth_regex_problem.pl6            17 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

#  my @monsters = < garuda blob golem mothera godzilla tingler >;


my regex fcode {
^ $<content>= (<-[\|]>*)\s* \|? \s* $
|
^ $<content>=[ .* \S]*\s*<?before \|>
\|
[\s* $<meta>=( .*? \S )\s*]+ % \;
\s*
$
} 
  
  


my regex fcode {
^ $<content>= (<-[\|]>*)\s* \|? \s* $
|
^ $<content>=[ .* \S]*\s*<?before \|>
\|
[\s* $<meta>=( .*? \S )\s*]+ % \;
\s*
$
} 
my @s = 'stuff | data ; more data',
'| data; and more',
'stuff |',
'|data',
'stuff | dkdkll ; kdkkd ; stubborn '
;
for @s {
'>'.say;.say; '#'.say;
say $_ ~~ /<fcode>/
}   
