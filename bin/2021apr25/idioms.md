- [idioms](#org25111db)
  - [utilpm piece from 2011](#orgbf6f61d)
  - [some idioms from the docs](#orgb876c75)
    - [assignment with method call](#orga30e7d5)
    - [using signals in an event driven situation:](#orga30b4f0)
    - [stringifying match object](#org7d58633)
    - [call named params in colon-style similar to declaration](#org13854a4)
    - [usually drop optional parens](#orgec3bb89)
    - [raku "or die" used much like perl](#orge30b14a)
    - [given/when](#orgb9967a6)
    - [looping over keys and values of a hash](#org2163fd0)
    - [use LEAVE phaser for closing the handles](#org71bd60d)
    - [the smartmatch operator ~~ rather than does](#org7b35647)


<a id="org25111db"></a>

# idioms

The word idiom is used in the docs, though not that frequently


<a id="orgbf6f61d"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orgb876c75"></a>

## some idioms from the docs


<a id="orga30e7d5"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="orga30b4f0"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org7d58633"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="org13854a4"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgec3bb89"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="orge30b14a"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="orgb9967a6"></a>

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


<a id="org2163fd0"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org71bd60d"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org7b35647"></a>

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
