- [idioms](#org32a9dc2)
  - [utilpm piece from 2011](#org1ff88eb)
  - [some idioms from the docs](#orge7852e8)
    - [assignment with method call](#org4eb32a2)
    - [using signals in an event driven situation:](#orgb5a8893)
    - [stringifying match object](#org0c4c7f6)
    - [call named params in colon-style similar to declaration](#org7c79fb0)
    - [usually drop optional parens](#org25121c4)
    - [raku "or die" used much like perl](#org2eeb6eb)
    - [given/when](#org4de8911)
    - [looping over keys and values of a hash](#orgcab117f)
    - [use LEAVE phaser for closing the handles](#org27d958e)
    - [the smartmatch operator ~~ rather than does](#org7778a9e)


<a id="org32a9dc2"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" is used in a wider sense on occasion to just mean "a way to do it".)

The word idiom is used in the docs, though not all that frequently&#x2013;


<a id="org1ff88eb"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orge7852e8"></a>

## some idioms from the docs


<a id="org4eb32a2"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="orgb5a8893"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org0c4c7f6"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="org7c79fb0"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="org25121c4"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org2eeb6eb"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="org4de8911"></a>

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


<a id="orgcab117f"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org27d958e"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org7778a9e"></a>

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
