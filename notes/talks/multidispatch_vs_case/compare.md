- [raku case vs multidispatch](#orgf71cef6)
  - [case](#orgd8a7dcb)
    - [uses lexical sequence to order comparisons](#org14b7214)
  - [multidispatch](#org4ecf9e7)
    - [uses specificity to order comparisons (mostly)](#org3def24c)
  - [would've like to say:](#orge834e6a)
    - [case](#org2004e1c)
    - [multi](#orgbda8f41)


<a id="orgf71cef6"></a>

# raku case vs multidispatch


<a id="orgd8a7dcb"></a>

## case


<a id="org14b7214"></a>

### uses lexical sequence to order comparisons


<a id="org4ecf9e7"></a>

## multidispatch


<a id="org3def24c"></a>

### uses specificity to order comparisons (mostly)

1.  in the case of subsets, uses order of definition

    1.  subsets are essentially grouped by the type they're based on
    
    2.  BUT they don't behave like two multis with same type
    
        1.  uses the order of definition for subsets based on same type


<a id="orge834e6a"></a>

## would've like to say:


<a id="org2004e1c"></a>

### case

1.  running a gauntlet, an obvious lexically determined order of comparisons


<a id="orgbda8f41"></a>

### multi

1.  orders types by "specificity", not lexically (not entirely true)

2.  code that handles various types can be scattered, defined in different places
