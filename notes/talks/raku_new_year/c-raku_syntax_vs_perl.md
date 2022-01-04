- [raku syntax vs perl](#org9ec9a5d)
  - [raku continues to have a perlish feel, but--](#org651b54e)
    - [object method calls via the more standard ".", not the "->"](#org59ffe6b)
    - [variable names typically have sigils still: $, @, %](#org0d1e788)
    - [everything is an object](#org9dc4ba8)
    - [](#orgd42039b)


<a id="org9ec9a5d"></a>

# raku syntax vs perl


<a id="org651b54e"></a>

## raku continues to have a perlish feel, but--


<a id="org59ffe6b"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org0d1e788"></a>

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
        my $mutie   = 'black_bolt';
        my $immutie := 'iron_man';
        ```


<a id="org9dc4ba8"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orgd42039b"></a>

###
