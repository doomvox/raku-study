- [raku case vs multidispatch](#org30e4b6c)
  - [very roughly](#org0b5d5b6)
    - [case](#org4a5b722)
    - [multi](#orge0e29a4)
  - [utility](#org1e7a4c1)
    - [case](#org16be405)
    - [multi](#orgbae6cdc)


<a id="org30e4b6c"></a>

# raku case vs multidispatch


<a id="org0b5d5b6"></a>

## very roughly


<a id="org4a5b722"></a>

### case

1.  an obvious lexical sequence of comparisons (running a gauntlet)


<a id="orge0e29a4"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are essentially grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places


<a id="org1e7a4c1"></a>

## utility


<a id="org16be405"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="orgbae6cdc"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
