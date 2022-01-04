- [raku syntax vs perl](#orgf2d390d)
  - [raku continues to have a perlish feel, but--](#org8a1ab32)
    - [object method calls via the more standard ".", not the "->"](#orgd494a30)
    - [variable names typically have sigils still: $, @, %](#org9e2eb91)


<a id="orgf2d390d"></a>

# raku syntax vs perl


<a id="org8a1ab32"></a>

## raku continues to have a perlish feel, but--


<a id="orgd494a30"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org9e2eb91"></a>

### variable names typically have sigils still: $, @, %

1.  the @ and % sigils now behave like part of the name, they're invariant:

    ```perl
    # Perl
    my %fried;
    $fried{eggs} = 2;
    ```
    
    ```raku
    # Raku
    my %fried;
    %fried<eggs> = 2;
    ```

2.  you can have names sans sigils
