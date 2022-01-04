- [raku syntax vs perl](#org39a8bb9)
  - [raku continues to have a perlish feel, but--](#org23bec86)
    - [object method calls via the more standard ".", not the "->"](#org586e63f)
    - [variable names typically have sigils still: $, @, %](#org2793cde)
    - [everything is an object](#org41f194e)
    - [](#orge29b351)


<a id="org39a8bb9"></a>

# raku syntax vs perl


<a id="org23bec86"></a>

## raku continues to have a perlish feel, but--


<a id="org586e63f"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org2793cde"></a>

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


<a id="org41f194e"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orge29b351"></a>

###
