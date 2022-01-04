- [raku syntax vs perl](#orgb91e5a2)
  - [raku continues to have a perlish feel, but--](#org4044800)
    - [object method calls via the more standard ".", not the "->"](#org9e69bd3)
    - [variable names typically have sigils still: $, @, %](#orge07dc4d)
    - [flattening](#orgd5f3b60)
    - [everything is an object](#org895a57c)
    - [a push for consistency](#org8bba98b)


<a id="orgb91e5a2"></a>

# raku syntax vs perl


<a id="org4044800"></a>

## raku continues to have a perlish feel, but--


<a id="org9e69bd3"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orge07dc4d"></a>

### variable names typically have sigils still: $, @, %

1.  the @ and % sigils now behave like part of the name, they're invariant:

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

    1.  typical vars are mutable, and have invisible "containers"
    
    2.  vars can contain immutables, bare constants without containers
    
        ```raku
        my $var           = 3;
        my $sorta_const  := 3;
        $var++;           ## Works
        $sorta_const++;   ## Error
        
        my $alias  :=  $var;  
        $alias++;  ## increments $var also
        ```
    
    3.  a 'scalar' can contain any object, including an aggregate (array, hash, etc)
    
        1.  similar to perl's references: $ doesn't mean "single"


<a id="orgd5f3b60"></a>

### flattening

1.  in perl, nested lists flatten out unless you do something

2.  in raku, nested structures are preserved, unless you do something

    1.  
    
        my @residual = @list (-) @exceptions; ## weak: first element in array contains result
        
        my @residual | = @list (-) @exceptions; ## better to "slip" out of container


<a id="org895a57c"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org8bba98b"></a>

### a push for consistency
