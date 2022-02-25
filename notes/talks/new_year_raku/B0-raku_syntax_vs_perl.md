- [raku syntax vs perl](#orga830fa1)
  - [See: <https://docs.raku.org/language/5to6-nutshell>](#org51aac83)
  - [raku continues to have a perlish feel, but--](#orgc73f9ca)
    - [object method calls via the more standard ".", not the "->"](#org9b95067)
    - [variable names typically have sigils still: $, @, %](#org712adfa)
    - [flattening](#org28f1179)
    - [everything is an object](#orgd8b0d93)
    - [scalar and list context have gone away in Raku](#orgb61f2ec)
    - [a push for consistency](#org8933224)
    - [one-pass parsing](#orgef4faeb)


<a id="orga830fa1"></a>

# raku syntax vs perl


<a id="org51aac83"></a>

## See: <https://docs.raku.org/language/5to6-nutshell>


<a id="orgc73f9ca"></a>

## raku continues to have a perlish feel, but--


<a id="org9b95067"></a>

### object method calls via the more standard ".", not the "->"

1.  the default object for "." is $\_    {  .method  }

2.  string concat is now "~" not "."


<a id="org712adfa"></a>

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


<a id="org28f1179"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container
    
    2.  a few ways to flatten: ".flat", slip operator "|"


<a id="orgd8b0d93"></a>

### everything is an object

1.  chains of method calls are common

    1.  though there are function forms for many methods

2.  smartmatch and given/when actually work

    1.  helps to have a type system


<a id="orgb61f2ec"></a>

### scalar and list context have gone away in Raku

1.  but many operators do implied type-conversion, which feels perlish


<a id="org8933224"></a>

### a push for consistency

1.  e.g. {} almost always means a block of code


<a id="orgef4faeb"></a>

### one-pass parsing

1.  but that has unfortunate side effects

    1.  this is okay in perl5
    
        ```perl
        if( $this ) { ... }
        ```
    
    2.  space after "if" is **required** in raku
    
        ```raku
        if ( $this ) { ... }
        ```
