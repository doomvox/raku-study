- [idioms](#orgb9613ac)
  - [blog posts](#org6e33324)
    - [utilpm from 2011 (more of a "Raku way to do it" piece):](#org3a486d1)
    - [gfldex from 2021, writing a wget in raku several different ways](#orga1ab1f9)
    - [damien conway 2019, idioms for iterating over a list or doing something else if empty](#orgdd8fa3b)
  - [from the docs](#org9fd77d9)
    - [assignment with method call](#org4a6aea4)
    - [using signals in an event driven situation:](#org948dba3)
    - [stringifying match object](#org308a15c)
    - [call named params in colon-style similar to declaration](#orged998e6)
    - [usually drop optional parens](#orgab776b6)
    - [raku "or die" used much like perl](#org2104a5d)
    - [given/when](#org897e774)
    - [looping over keys and values of a hash](#org0624fac)
    - [use LEAVE phaser for closing the handles](#org7b12683)
    - [the smartmatch operator ~~ rather than does](#org5c40f35)


<a id="orgb9613ac"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" also gets used in a wider sense to just mean "a way to do it", or "the Raku way of doing it".)


<a id="org6e33324"></a>

## blog posts


<a id="org3a486d1"></a>

### utilpm from 2011 (more of a "Raku way to do it" piece):

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="orga1ab1f9"></a>

### gfldex from 2021, writing a wget in raku several different ways

<https://gfldex.wordpress.com/2021/04/16/all-your-idioms-are-belong-to-us/>


<a id="orgdd8fa3b"></a>

### damien conway 2019, idioms for iterating over a list or doing something else if empty

<http://blogs.perl.org/users/damian_conway/2019/09/itchscratch.html>


<a id="org9fd77d9"></a>

## from the docs

The docs uses the word "idiom" occasionally, though only sometimes indicating a style preference:


<a id="org4a6aea4"></a>

### assignment with method call

```perl6
class LongClassName { 
     has $.frobnicate; 
 } 
 my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
```


<a id="org948dba3"></a>

### using signals in an event driven situation:

```perl6
react { 
     whenever signal(SIGINT) { 
         say "goodbye"; 
         done 
     } 
 }
```


<a id="org308a15c"></a>

### stringifying match object

$/.Str should also work, ~$/ is currently the more common idiom.


<a id="orged998e6"></a>

### call named params in colon-style similar to declaration

```perl6
sub speak(:$word, :$times) {
  say $word for ^$times
}
speak(word => 'hi', times => 2);
speak(:word<hi>, :times<2>);      # Alternative, more idiomatic

speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
```


<a id="orgab776b6"></a>

### usually drop optional parens

```perl6
if ($a < 0) { ... }         # Perl 6 
if $a < 0 { ... }           # Perl 6, more idiomatic
```

```perl6
while ($x > 5) { ... }      # Perl 6 
while $x > 5 { ... }        # Perl 6, more idiomatic
```


<a id="org2104a5d"></a>

### raku "or die" used much like perl

```raku
mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
rmdir "newdir" or die "$!";
```


<a id="org897e774"></a>

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


<a id="org0624fac"></a>

### looping over keys and values of a hash

```perl6
my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
for %vowels.kv -> $vowel, $index {
  "$vowel: $index".say;
}
```


<a id="org7b12683"></a>

### use LEAVE phaser for closing the handles

works regardless of how the block is left.

```perl6
if $do-stuff-with-the-file { 
     my $fh = open "path-to-file"; 
     LEAVE close $fh; 
     # ... do stuff with the file 
 }
```


<a id="org5c40f35"></a>

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
