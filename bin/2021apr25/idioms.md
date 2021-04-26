- [idioms](#org945f1b4)
  - [utilpm piece from 2011](#org2b02ea1)
  - [some idioms from the docs](#orgc626a14)
    - [assignment with method call](#orgff3ddf4)
    - [using signals in an event driven situation:](#orgfdb4162)
    - [stringifying match object](#org5b3ec17)
    - [call named params in colon-style similar to declaration](#orgab8c542)
    - [usually drop optional parens](#org6aeedbf)
    - [raku "or die" used much like perl](#org23ea59d)
    - [given/when](#orgef36980)
    - [looping over keys and values of a hash](#orgb578552)
    - [use LEAVE phaser for closing the handles](#org4c0e146)
    - [the smartmatch operator ~~ rather than does](#org632ad68)


<a id="org945f1b4"></a>

# idioms

The word idiom is used in the docs, though not that frequently


<a id="org2b02ea1"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orgc626a14"></a>

## some idioms from the docs


<a id="orgff3ddf4"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="orgfdb4162"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org5b3ec17"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="orgab8c542"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="org6aeedbf"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org23ea59d"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="orgef36980"></a>

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


<a id="orgb578552"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org4c0e146"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org632ad68"></a>

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
