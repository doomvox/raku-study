- [raku syntax vs perl](#org4089f4d)
  - [raku continues to have a perlish feel, but--](#orgd2ed6df)
    - [object method calls via the more standard ".", not the "->"](#orge0e88d8)
    - [variable names typically have sigils still: $, @, %](#org7ffa0cb)
    - [everything is an object](#org14e5858)
    - [](#org4ec85e4)


<a id="org4089f4d"></a>

# raku syntax vs perl


<a id="orgd2ed6df"></a>

## raku continues to have a perlish feel, but--


<a id="orge0e88d8"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org7ffa0cb"></a>

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


<a id="org14e5858"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org4ec85e4"></a>

###
