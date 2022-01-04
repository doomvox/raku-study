- [raku syntax vs perl](#org88f07ec)
  - [raku continues to have a perlish feel, but--](#org5b40542)
    - [object method calls via the more standard ".", not the "->"](#orge458985)
    - [variable names typically have sigils still: $, @, %](#org08a28b4)
    - [everything is an object](#orgb65aa15)
    - [](#org598b319)


<a id="org88f07ec"></a>

# raku syntax vs perl


<a id="org5b40542"></a>

## raku continues to have a perlish feel, but--


<a id="orge458985"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org08a28b4"></a>

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
    
        my $mutie = 'black<sub>bolt</sub>; my $immutie := 'iron man';
        
        say i + j: ## 5 \\#+END<sub>SRC</sub>


<a id="orgb65aa15"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org598b319"></a>

###
