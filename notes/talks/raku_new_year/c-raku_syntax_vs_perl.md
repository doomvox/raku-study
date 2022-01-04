- [raku syntax vs perl](#orge011602)
  - [raku continues to have a perlish feel, but--](#org30afa5d)
    - [object method calls via the more standard ".", not the "->"](#org9789de5)
    - [variable names typically have sigils still: $, @, %](#org84a5227)
    - [everything is an object](#org182f24f)
    - [](#org561830b)


<a id="orge011602"></a>

# raku syntax vs perl


<a id="org30afa5d"></a>

## raku continues to have a perlish feel, but--


<a id="org9789de5"></a>

### object method calls via the more standard ".", not the "->"

1.  string concationation is now "~" not "."


<a id="org84a5227"></a>

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
        
        my $alias  :=  $var;  
        $alias++;  ## increments $var also
        ```
    
    3.  a 'scalar' can contain any object, including an aggregate (array, hash, etc)
    
        1.  similar to perl's references: $ doesn't mean "single"


<a id="org182f24f"></a>

### everything is an object

1.  chains of method calls are common

2.  though there are function forms for many methods


<a id="org561830b"></a>

###
