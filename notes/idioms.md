- [idioms](#org3a1e925)
  - [blog posts](#org9bc1ea0)
    - [utilpm piece from 2011 (perl5 things translated to raku):](#orgc5ae2ec)
    - [recent piece by gfldex,  writing a wget in raku several different ways](#orgb563027)
  - [from the docs](#orgddd4146)
    - [assignment with method call](#orgd86ec9f)
    - [using signals in an event driven situation:](#orgf883294)
    - [stringifying match object](#org44e6ffd)
    - [call named params in colon-style similar to declaration](#org3a30fce)
    - [usually drop optional parens](#org8c52259)
    - [raku "or die" used much like perl](#org901e679)
    - [given/when](#org70a4f9f)
    - [looping over keys and values of a hash](#org7ad3a38)
    - [use LEAVE phaser for closing the handles](#orgd9d4149)
    - [the smartmatch operator ~~ rather than does](#orge0f9ea3)


<a id="org3a1e925"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" also gets used in a wider sense to just mean "a way to do it".)


<a id="org9bc1ea0"></a>

## blog posts


<a id="orgc5ae2ec"></a>

### utilpm piece from 2011 (perl5 things translated to raku):

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orgb563027"></a>

### recent piece by gfldex,  writing a wget in raku several different ways

<https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>


<a id="orgddd4146"></a>

## from the docs

The docs uses the word "idiom" occasionally, though only sometimes indicating a style preference:


<a id="orgd86ec9f"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="orgf883294"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org44e6ffd"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="org3a30fce"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="org8c52259"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org901e679"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="org70a4f9f"></a>

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


<a id="org7ad3a38"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="orgd9d4149"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="orge0f9ea3"></a>

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
