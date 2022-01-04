- [raku syntax vs perl](#org237115d)
  - [raku continues to have a perlish feel, but--](#org89c0b58)
    - [object method calls via the more standard ".", not the "->"](#org1d8f059)
    - [variable names typically have sigils still: $, @, %](#org552a689)


<a id="org237115d"></a>

# raku syntax vs perl


<a id="org89c0b58"></a>

## raku continues to have a perlish feel, but--


<a id="org1d8f059"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org552a689"></a>

### variable names typically have sigils still: $, @, %

1.  the @ and % sigils now behave like part of the name, they're invariant:

    ```perl
    my %fried;
    $fried{eggs} = 2;
    ```
    
    ```raku
    my %fried;
    %fried<eggs> = 2;
    ```

2.  you can have names sans sigils
