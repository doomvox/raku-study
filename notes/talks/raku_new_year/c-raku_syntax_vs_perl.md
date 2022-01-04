- [raku syntax vs perl](#org2be4695)
  - [raku continues to have a perlish feel, but--](#org3d8a287)
    - [object method calls via the more standard ".", not the "->"](#org7de501d)
    - [variable names typically have sigils still: $, @, %](#orga21de98)
    - [everything is an object](#org2f87717)
    - [](#orgd647259)


<a id="org2be4695"></a>

# raku syntax vs perl


<a id="org3d8a287"></a>

## raku continues to have a perlish feel, but--


<a id="org7de501d"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="orga21de98"></a>

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
        # or alternately
        %fried{'eggs'} = 2;
        ```

2.  you can also have names sans sigils (not done often)

    ```raku
    my (\i, \j) = (2, 3);
    say i + j:  ## 5
    ```


<a id="org2f87717"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgd647259"></a>

###
