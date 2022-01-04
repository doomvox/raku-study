- [raku syntax vs perl](#org7a8a783)
  - [raku continues to have a perlish feel, but--](#org3d11daa)
    - [object method calls via the more standard ".", not the "->"](#org8f53583)
    - [variable names typically have sigils still: $, @, %](#org9fed7cc)


<a id="org7a8a783"></a>

# raku syntax vs perl


<a id="org3d11daa"></a>

## raku continues to have a perlish feel, but--


<a id="org8f53583"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org9fed7cc"></a>

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
