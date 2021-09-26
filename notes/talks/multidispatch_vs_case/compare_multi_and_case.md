- [raku case vs multidispatch                                              f](#org11a6f63)
  - [very roughly](#orgc0ac68f)
    - [case](#org2462b63)
    - [multi](#org574111e)
  - [utility](#org394e2f8)
    - [case](#org3959649)
    - [multi](#org4187380)


<a id="org11a6f63"></a>

# raku case vs multidispatch                                              f


<a id="orgc0ac68f"></a>

## very roughly


<a id="org2462b63"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)

2.  "default" means the catch-all, the alternative if no other cases match


<a id="org574111e"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places

3.  there's an "is default" trait available to break ties in type specificity


<a id="org394e2f8"></a>

## utility


<a id="org3959649"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org4187380"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
