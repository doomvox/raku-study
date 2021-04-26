- [idioms](#org6b2263a)
  - [utilpm piece from 2011](#org5053ead)
  - [some idioms from the docs](#orge9ddd89)
    - [assignment with method call](#orgc30c2d5)
    - [using signals in an event driven situation:](#org3475cec)
    - [stringifying match object](#org1960fda)
    - [call named params in colon-style similar to declaration](#orga882884)
    - [usually drop optional parens](#orgde068a1)
    - [raku "or die" used much like perl](#orgdb788bc)
    - [given/when](#org7120316)
    - [looping over keys and values of a hash](#orgf9351ae)
    - [use LEAVE phaser for closing the handles](#orge28c7f0)
    - [the smartmatch operator ~~ rather than does](#org92b41a4)


<a id="org6b2263a"></a>

# idioms

The word idiom is used in the docs, though not all that frequently&#x2013; here I'm looking for "recommended idioms", cases where there are several ways of doing things in raku.


<a id="org5053ead"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orge9ddd89"></a>

## some idioms from the docs


<a id="orgc30c2d5"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="org3475cec"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org1960fda"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="orga882884"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgde068a1"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="orgdb788bc"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="org7120316"></a>

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


<a id="orgf9351ae"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="orge28c7f0"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org92b41a4"></a>

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
