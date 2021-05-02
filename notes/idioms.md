- [idioms](#org7f00e76)
  - [blog posts](#org7b686ee)
    - [utilpm piece from 2011 (more of a "Raku way to do it" piece):](#orgd103092)
    - [recent piece by gfldex,  writing a wget in raku several different ways](#org1a1be9d)
  - [from the docs](#org19cbd19)
    - [assignment with method call](#orgf30210d)
    - [using signals in an event driven situation:](#org8db6c59)
    - [stringifying match object](#org346b80f)
    - [call named params in colon-style similar to declaration](#orgae70526)
    - [usually drop optional parens](#orgf332e34)
    - [raku "or die" used much like perl](#orgbe6c0bb)
    - [given/when](#orge36e461)
    - [looping over keys and values of a hash](#orga9b465e)
    - [use LEAVE phaser for closing the handles](#org62b75eb)
    - [the smartmatch operator ~~ rather than does](#org4a926a8)


<a id="org7f00e76"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" also gets used in a wider sense to just mean "a way to do it", or "the Raku way of doing it".)


<a id="org7b686ee"></a>

## blog posts


<a id="orgd103092"></a>

### utilpm piece from 2011 (more of a "Raku way to do it" piece):

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="org1a1be9d"></a>

### recent piece by gfldex,  writing a wget in raku several different ways

<https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>


<a id="org19cbd19"></a>

## from the docs

The docs uses the word "idiom" occasionally, though only sometimes indicating a style preference:


<a id="orgf30210d"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="org8db6c59"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org346b80f"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="orgae70526"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgf332e34"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="orgbe6c0bb"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="orge36e461"></a>

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


<a id="orga9b465e"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org62b75eb"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org4a926a8"></a>

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
