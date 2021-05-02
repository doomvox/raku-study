- [idioms](#org921f4fe)
  - [blog posts](#orgc7ead78)
    - [utilpm piece from 2011 (perl5 things translated to raku):](#org3f1c3f4)
    - [recent piece by gfldex,  writing a wget in raku several different ways](#org6621e64)
  - [from the docs](#orgf80fb49)
    - [assignment with method call](#org8b4cbe7)
    - [using signals in an event driven situation:](#orgd0f6500)
    - [stringifying match object](#orgf353063)
    - [call named params in colon-style similar to declaration](#orgcdefbfc)
    - [usually drop optional parens](#org1d7413c)
    - [raku "or die" used much like perl](#org4d0cf52)
    - [given/when](#orga4cd4f0)
    - [looping over keys and values of a hash](#orgb08a243)
    - [use LEAVE phaser for closing the handles](#org6b4fddf)
    - [the smartmatch operator ~~ rather than does](#org03b87be)


<a id="org921f4fe"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" also gets used in a wider sense to just mean "a way to do it", or "the Raku way of doing it".)


<a id="orgc7ead78"></a>

## blog posts


<a id="org3f1c3f4"></a>

### utilpm piece from 2011 (perl5 things translated to raku):

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="org6621e64"></a>

### recent piece by gfldex,  writing a wget in raku several different ways

<https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>


<a id="orgf80fb49"></a>

## from the docs

The docs uses the word "idiom" occasionally, though only sometimes indicating a style preference:


<a id="org8b4cbe7"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="orgd0f6500"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="orgf353063"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="orgcdefbfc"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="org1d7413c"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org4d0cf52"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="orga4cd4f0"></a>

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


<a id="orgb08a243"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org6b4fddf"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org03b87be"></a>

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
