- [raku syntax vs perl](#org66d0482)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#org39cd40c)
  - [raku continues to have a perlish feel, but--](#org551cefc)
    - [object method calls via the more standard ".", not the "->"](#orgfae0a07)
    - [variable names typically have sigils still: $, @, %](#org45c3e7b)
    - [flattening](#orgdebfe92)
    - [everything is an object](#org3d71ab9)
    - [scalar and list context have gone away in Raku](#org65bd61e)
    - [a push for consistency](#org16acd3b)
    - [one-pass parsing](#org10b25cb)


<a id="org66d0482"></a>

# raku syntax vs perl


<a id="org39cd40c"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="org551cefc"></a>

## raku continues to have a perlish feel, but--


<a id="orgfae0a07"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="org45c3e7b"></a>

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
    
    3.  binding operator can create aliases: here $var is incremented too
    
        ```raku
        my $alias  :=  $var;  
        $alias++;  
        ```
    
    4.  a 'scalar' can contain any object, including an array, hash, etc
    
        1.  similar to perl's references: $ doesn't mean "singular"


<a id="orgdebfe92"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="org3d71ab9"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods

3.  smartmatch and given/when can work

    1.  helps to have a type system


<a id="org65bd61e"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org16acd3b"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="org10b25cb"></a>

### one-pass parsing

1.  unfortunate side effects e.g. this is no good: if( $this ) { &#x2026; }
