- [raku case vs multidispatch                                              f](#orge2b3c69)
  - [very roughly](#org4720058)
    - [case](#orgc0eef44)
    - [multi](#orgcd1dc7f)
  - [utility](#orgac18c34)
    - [case](#org17a2b8d)
    - [multi](#org2b5ccf2)


<a id="orge2b3c69"></a>

# raku case vs multidispatch                                              f


<a id="org4720058"></a>

## very roughly


<a id="orgc0eef44"></a>

### case

1.  clear flow of execution: sequence of comparisons all in one place (running a gauntlet)

2.  "default" means the catch-all, the alternative if no other cases match


<a id="orgcd1dc7f"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places (common with OOP)

3.  there's an "is default" trait available to break ties in type specificity

    1.  this "is default" isn't quite the same as the given/when "default"


<a id="orgac18c34"></a>

## utility


<a id="org17a2b8d"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org2b5ccf2"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
