- [idioms](#orga0f84c5)
  - [utilpm piece from 2011](#org7496fea)
  - [some idioms from the docs](#orga67f454)
    - [assignment with method call](#org440b937)
    - [using signals in an event driven situation:](#org2c653fb)
    - [stringifying match object](#org9855037)
    - [call named params in colon-style similar to declaration](#orgdbd2ed1)
    - [usually drop optional parens](#orgce95de1)
    - [raku "or die" used much like perl](#org5b51788)
    - [given/when](#orgb4b73c7)
    - [looping over keys and values of a hash](#org896c512)
    - [use LEAVE phaser for closing the handles](#org48de92d)
    - [the smartmatch operator ~~ rather than does](#org3883e49)


<a id="orga0f84c5"></a>

# idioms

The word idiom is used in the docs, though not that frequently&#x2013; we're looking for "recommended idioms", cases where there are several ways of


<a id="org7496fea"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orga67f454"></a>

## some idioms from the docs


<a id="org440b937"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="org2c653fb"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org9855037"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="orgdbd2ed1"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgce95de1"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org5b51788"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="orgb4b73c7"></a>

### given/when

given sets $\_ inside the following block. The keywords for individual cases are when and default.

```perl6
my $var = (Any, 21, any <answer lie>).pick;
given $var {
    when 21 { say $_ * 2 }
    when 'lie' { .say }
    default { say 'default' }
}
```


<a id="org896c512"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org48de92d"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org3883e49"></a>

### the smartmatch operator ~~ rather than does

```perl6
my $d = Date.new('2016-06-03');
say $d.does(Dateish);       # True    (Date does role Dateish) 
say $d ~~ Dateish;          # True
```

Note: isa is like does, but returns True only for superclasses, does includes both superclasses and roles.

```perl6
say $d.isa(Dateish);        # False
```
