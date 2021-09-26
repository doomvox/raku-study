- [raku case vs multidispatch](#org90a80b3)
  - [very roughly](#org83c4500)
    - [case](#orgcfa8f63)
    - [multi](#orge8f9d67)
  - [utility](#org2cd086e)
    - [case](#org7110d09)
    - [multi](#org1cf3dcf)


<a id="org90a80b3"></a>

# raku case vs multidispatch


<a id="org83c4500"></a>

## very roughly


<a id="orgcfa8f63"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)


<a id="orge8f9d67"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, uses order of definition
    
        1.  subsets are essentially grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places


<a id="org2cd086e"></a>

## utility


<a id="org7110d09"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org1cf3dcf"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
