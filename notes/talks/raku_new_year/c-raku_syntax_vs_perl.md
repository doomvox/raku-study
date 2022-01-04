- [raku syntax vs perl](#org878f450)
  - [raku continues to have a perlish feel, but--](#orgd4ab1ae)
    - [object method calls via the more standard ".", not the "->"](#orga3b41b0)
    - [variable names typically have sigils still: $, @, %](#org25e1af8)
    - [everything is an object](#org7fb9727)
    - [](#org7ef8870)


<a id="org878f450"></a>

# raku syntax vs perl


<a id="orgd4ab1ae"></a>

## raku continues to have a perlish feel, but--


<a id="orga3b41b0"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org25e1af8"></a>

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
        ```
    
    3.  a 'scalar' can contain any object, including an aggregate (array, hash, etc)
    
        1.  similar to perl's references


<a id="org7fb9727"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org7ef8870"></a>

###
