- [idioms](#orgf544b72)
  - [utilpm piece from 2011](#org8eb6a7f)
  - [some idioms from the docs](#org7b3b27c)
    - [assignment with method call](#org12a1ccb)
    - [using signals in an event driven situation:](#org29915c2)
    - [stringifying match object](#orga56325a)
    - [call named params in colon-style similar to declaration](#org410587d)
    - [usually drop optional parens](#org20100e3)
    - [raku "or die" used much like perl](#orgad3e343)
    - [given/when](#org754385b)
    - [looping over keys and values of a hash](#org7b8fd15)
    - [use LEAVE phaser for closing the handles](#org7538a75)
    - [the smartmatch operator ~~ rather than does](#org3633e30)


<a id="orgf544b72"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored.

(The word "idiom" is used in a wider sense on occasion to just mean "a way to do it".)

The word idiom is used in the docs, though not all that frequently&#x2013;


<a id="org8eb6a7f"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="org7b3b27c"></a>

## some idioms from the docs


<a id="org12a1ccb"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="org29915c2"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="orga56325a"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="org410587d"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="org20100e3"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="orgad3e343"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="org754385b"></a>

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


<a id="org7b8fd15"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org7538a75"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org3633e30"></a>

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
