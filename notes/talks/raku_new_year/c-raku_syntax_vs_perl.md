- [raku syntax vs perl](#orgf156961)
  - [raku continues to have a perlish feel, but--](#org01fe8b4)
    - [object method calls via the more standard ".", not the "->"](#org537ecdc)
    - [variable names typically have sigils still: $, @, %](#org8c0e1dc)


<a id="orgf156961"></a>

# raku syntax vs perl


<a id="org01fe8b4"></a>

## raku continues to have a perlish feel, but--


<a id="org537ecdc"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org8c0e1dc"></a>

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
        ```

2.  you can also have names sans sigils (not done often)
