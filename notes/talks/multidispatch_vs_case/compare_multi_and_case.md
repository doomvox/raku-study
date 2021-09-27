- [raku case vs multidispatch                                              f](#org2767b95)
  - [rough comparison](#org65ea27b)
    - [case](#org1e320ce)
    - [multi](#orgc84e618)
  - [utility](#org219b2f5)
    - [case](#org5452bee)
    - [multi](#org550bc5e)


<a id="org2767b95"></a>

# raku case vs multidispatch                                              f


<a id="org65ea27b"></a>

## rough comparison


<a id="org1e320ce"></a>

### case

1.  clear flow of execution: sequence of comparisons all in one place (running a gauntlet)

2.  "default" means the catch-all, the alternative if no other cases match


<a id="orgc84e618"></a>

### multi

1.  orders cases ~by "specificity", not lexically

    1.  in the case of subsets, falls back to order of definition
    
        1.  subsets are grouped by the type they're based on
        
        2.  BUT they don't behave like two multis with same type
        
            1.  uses the order of definition for subsets based on same type

2.  code that handles various types can be scattered, defined in different places (common with OOP)

3.  there's an "is default" trait available to break ties in type specificity

    1.  this "is default" isn't quite the same as the given/when "default"


<a id="org219b2f5"></a>

## utility


<a id="org5452bee"></a>

### case

1.  good for any sort of comparison, e.g. pattern matches


<a id="org550bc5e"></a>

### multi

1.  best for

    1.  checking types
    
    2.  particular fixed values

2.  you can do other things with them but

    1.  won't perform as well
    
    2.  are essentially second-class citizens
    
        1.  e.g. in the case of subsets actual behavior is undocumented
