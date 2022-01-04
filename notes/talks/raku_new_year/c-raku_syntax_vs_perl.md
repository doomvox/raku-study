- [raku syntax vs perl](#orgda00dfc)
  - [raku continues to have a perlish feel, but--](#orgd828064)
    - [object method calls via the more standard ".", not the "->"](#org652801b)
    - [variable names typically have sigils still: $, @, %](#org642354a)


<a id="orgda00dfc"></a>

# raku syntax vs perl


<a id="orgd828064"></a>

## raku continues to have a perlish feel, but--


<a id="org652801b"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org642354a"></a>

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

2.  you can have names sans sigils
