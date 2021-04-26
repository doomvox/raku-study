- [idioms](#orgde4c1de)
  - [utilpm piece from 2011](#orgc17ceaa)
  - [some idioms from the docs](#org57d1729)
    - [assignment with method call](#org1628a7b)
    - [using signals in an event driven situation:](#org1eaacab)
    - [stringifying match object](#org95c089f)
    - [call named params in colon-style similar to declaration](#org955ca96)
    - [usually drop optional parens](#orgf2958bb)
    - [raku "or die" used much like perl](#org15ccded)
    - [given/when](#org55ab357)
    - [looping over keys and values of a hash](#org36d34e5)
    - [use LEAVE phaser for closing the handles](#org7163c6d)
    - [the smartmatch operator ~~ rather than does](#org5f814a1)


<a id="orgde4c1de"></a>

# idioms

The word idiom is used in the docs, though not that frequently&#x2013; we're looking for "recommended idioms", cases where there are several ways of doing things in raku.


<a id="orgc17ceaa"></a>

## utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="org57d1729"></a>

## some idioms from the docs


<a id="org1628a7b"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="org1eaacab"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org95c089f"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="org955ca96"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgf2958bb"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org15ccded"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="org55ab357"></a>

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


<a id="org36d34e5"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org7163c6d"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org5f814a1"></a>

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
