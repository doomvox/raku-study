- [idioms](#org6e5577d)
  - [from the docs](#org22e2b82)
    - [utilpm piece from 2011](#orgeda8fb7)
    - [some idioms from the docs](#org8752d4d)


<a id="org6e5577d"></a>

# idioms

I'm looking for "recommended idioms", cases where there are several ways of doing things in raku but one is favored. (The word "idiom" also gets used in a wider sense to just mean "a way to do it".)


<a id="org22e2b82"></a>

## from the docs

The word idiom is used in the docs, though not all that frequently&#x2013;


<a id="orgeda8fb7"></a>

### utilpm piece from 2011

<https://perl6advent.wordpress.com/2011/12/23/day-23-idiomatic-perl-6/>


<a id="org8752d4d"></a>

### some idioms from the docs

1.  assignment with method call

    ```perl6
    class LongClassName { 
         has $.frobnicate; 
     } 
     my LongClassName $bar .= new( frobnicate => 42 ); # no need to repeat class name
    ```

2.  using signals in an event driven situation:

    ```perl6
    react { 
         whenever signal(SIGINT) { 
             say "goodbye"; 
             done 
         } 
     }
    ```

3.  stringifying match object

    $/.Str should also work, ~$/ is currently the more common idiom.

4.  call named params in colon-style similar to declaration

    ```perl6
    sub speak(:$word, :$times) {
      say $word for ^$times
    }
    speak(word => 'hi', times => 2);
    speak(:word<hi>, :times<2>);      # Alternative, more idiomatic
    
    speak(:word(hi), :times(2));      # Maybe *more* idiomatic? (if it works)
    ```

5.  usually drop optional parens

    ```perl6
    if ($a < 0) { ... }         # Perl 6 
    if $a < 0 { ... }           # Perl 6, more idiomatic
    ```
    
    ```perl6
    while ($x > 5) { ... }      # Perl 6 
    while $x > 5 { ... }        # Perl 6, more idiomatic
    ```

6.  raku "or die" used much like perl

    ```raku
    mkdir "newdir" or die "$!";   ## but now it dies anyway, so...
    rmdir "newdir" or die "$!";
    ```

7.  given/when

    given sets $\_ inside the following block. The keywords for individual cases are when and default.
    
    ```perl6
    my $var = (Any, 21, any <answer lie>).pick;
    given $var {
        when 21 { say $_ * 2 }
        when 'lie' { .say }
        default { say 'default' }
    }
    ```

8.  looping over keys and values of a hash

    ```perl6
    my %vowels = 'a' => 1, 'e' => 2, 'i' => 3, 'o' => 4, 'u' => 5;
    for %vowels.kv -> $vowel, $index {
      "$vowel: $index".say;
    }
    ```

9.  use LEAVE phaser for closing the handles

    works regardless of how the block is left.
    
    ```perl6
    if $do-stuff-with-the-file { 
         my $fh = open "path-to-file"; 
         LEAVE close $fh; 
         # ... do stuff with the file 
     }
    ```

10. the smartmatch operator ~~ rather than does

    ```perl6
    my $d = Date.new('2016-06-03');
    say $d.does(Dateish);       # True    (Date does role Dateish) 
    say $d ~~ Dateish;          # True
    ```
    
    Note: isa is like does, but returns True only for superclasses, does includes both superclasses and roles.
    
    ```perl6
    say $d.isa(Dateish);        # False
    ```
