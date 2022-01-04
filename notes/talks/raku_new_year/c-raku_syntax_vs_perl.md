- [raku syntax vs perl](#orge026a6e)
  - [raku continues to have a perlish feel, but--](#org8c3a4d2)
    - [object method calls via the more standard ".", not the "->"](#org5cf0d63)
    - [variable names typically have sigils still: $, @, %](#orge7a435f)
    - [everything is an object](#org650ffa8)
    - [](#orgc9b66bf)


<a id="orge026a6e"></a>

# raku syntax vs perl


<a id="org8c3a4d2"></a>

## raku continues to have a perlish feel, but--


<a id="org5cf0d63"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orge7a435f"></a>

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
        ```


<a id="org650ffa8"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgc9b66bf"></a>

###
