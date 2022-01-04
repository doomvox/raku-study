- [raku syntax vs perl](#org5fc1518)
  - [raku continues to have a perlish feel, but--](#org232ed62)
    - [object method calls via the more standard ".", not the "->"](#orgbc8a27c)
    - [variable names typically have sigils still: $, @, %](#org20f8fee)
    - [everything is an object](#org2abf130)
    - [](#orge6b8fde)


<a id="org5fc1518"></a>

# raku syntax vs perl


<a id="org232ed62"></a>

## raku continues to have a perlish feel, but--


<a id="orgbc8a27c"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org20f8fee"></a>

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


<a id="org2abf130"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="orge6b8fde"></a>

###
