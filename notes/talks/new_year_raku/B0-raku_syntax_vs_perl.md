- [raku syntax vs perl](#orgd8da70c)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#org656fc20)
  - [raku continues to have a perlish feel, but--](#org9aafd45)
    - [object method calls via the more standard ".", not the "->"](#org854f55e)
    - [variable names typically have sigils still: $, @, %](#org510d5c9)
    - [flattening](#org59918b8)
    - [everything is an object](#org2a4bb2a)
    - [scalar and list context have gone away in Raku](#orga033c74)
    - [a push for consistency](#org07af7a3)
    - [one-pass parsing](#org22a9ae4)


<a id="orgd8da70c"></a>

# raku syntax vs perl


<a id="org656fc20"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="org9aafd45"></a>

## raku continues to have a perlish feel, but--


<a id="org854f55e"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="org510d5c9"></a>

### variable names typically have sigils still: $, @, %

1.  sigils are invariant:  they act like part of the name&#x2013; @array and %hash

    1.  Perl
    
        ```perl
        my %fried;
        $fried{eggs} = 2;
        ```
    
    2.  Raku
    
        ```raku
        my %fried;
        %fried<eggs> = 2;
        # alternately
        %fried{'eggs'} = 2;
        ```

2.  you can also have names sans sigils (not done often)

    ```raku
    my (\i, \j) = (2, 3);
    say i + j:  ## 5
    ```

3.  containers

    1.  vars typically point to invisible "containers", and are mutable
    
    2.  vars can point to bare values without containers
    
        ```raku
        my $var           = 3;
        
        my $sorta_const  := 3;
        $var++;           ## Works
        $sorta_const++;   ## Error
        ```
    
    3.  binding operator can create aliases
    
        ```raku
        my $alias  :=  $var;  
        $alias++;  # increments $var too
        ```
    
    4.  a 'scalar' can contain any object, including an array, hash, etc
    
        1.  similar to perl's references: $ doesn't mean "singular"


<a id="org59918b8"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="org2a4bb2a"></a>

### everything is an object

1.  chains of method calls are common

    1.  though there are function forms for many methods

2.  smartmatch and given/when actually work

    1.  helps to have a type system


<a id="orga033c74"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org07af7a3"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org22a9ae4"></a>

### one-pass parsing

1.  unfortunate side effects e.g. this is no good: if( $this ) { &#x2026; }
