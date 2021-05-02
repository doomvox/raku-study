- [idioms](#org951effe)
  - [blog posts](#orge848b06)
    - [utilpm from 2011 (more of a "Raku way to do it" piece):](#org3a9480c)
    - [gfldex from 2021, writing a wget in raku several different ways](#org2c07ea8)
    - [damien conway 2019, idioms for iterating over a list or doing something else if empty](#org2df8c99)
  - [from the docs](#org419c141)
    - [assignment with method call](#orgc16445a)
    - [using signals in an event driven situation:](#orga21d96f)
    - [stringifying match object](#org61f7abc)
    - [call named params in colon-style similar to declaration](#org4427f4d)
    - [usually drop optional parens](#orgd5bd762)
    - [raku "or die" used much like perl](#org2101bbb)
    - [given/when](#orgaaf4e92)
    - [looping over keys and values of a hash](#org7ea4b1c)
    - [use LEAVE phaser for closing the handles](#orgcf664d6)
    - [the smartmatch operator ~~ rather than does](#orgca31814)


<a id="org951effe"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" also gets used in a wider sense to just mean "a way to do it", or "the Raku way of doing it".)


<a id="orge848b06"></a>

## blog posts


<a id="org3a9480c"></a>

### utilpm from 2011 (more of a "Raku way to do it" piece):

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="org2c07ea8"></a>

### gfldex from 2021, writing a wget in raku several different ways

<https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>


<a id="org2df8c99"></a>

### damien conway 2019, idioms for iterating over a list or doing something else if empty

<http://blogs.perl.org/users/damian_conway/2019/09/itchscratch.html>


<a id="org419c141"></a>

## from the docs

The docs uses the word "idiom" occasionally, though only sometimes indicating a style preference:


<a id="orgc16445a"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="orga21d96f"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org61f7abc"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="org4427f4d"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgd5bd762"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org2101bbb"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="orgaaf4e92"></a>

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


<a id="org7ea4b1c"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="orgcf664d6"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="orgca31814"></a>

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
