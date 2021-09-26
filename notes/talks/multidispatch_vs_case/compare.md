- [raku case vs multidispatch](#orgdb4b0a9)
  - [very roughly](#orgcca7b11)
    - [case](#org7a14280)
    - [multi](#org3c9c3c9)
  - [utility](#org7135b6f)
    - [case](#orgaf8ef83)
    - [multi](#orgc40b943)


<a id="orgdb4b0a9"></a>

# raku case vs multidispatch


<a id="orgcca7b11"></a>

## very roughly


<a id="org7a14280"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)


<a id="org3c9c3c9"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places


<a id="org7135b6f"></a>

## utility


<a id="orgaf8ef83"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="orgc40b943"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
