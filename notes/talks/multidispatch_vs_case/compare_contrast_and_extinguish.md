- [raku case vs multidispatch](#org6884630)
  - [case](#orgb4136c6)
    - [uses lexical sequence to order comparisons](#org440eb5a)
  - [multidispatch](#org8ecb441)
    - [uses specificity to order comparisons (mostly)](#orgeaf2472)


<a id="org6884630"></a>

# raku case vs multidispatch


<a id="orgb4136c6"></a>

## case


<a id="org440eb5a"></a>

### uses lexical sequence to order comparisons


<a id="org8ecb441"></a>

## multidispatch


<a id="orgeaf2472"></a>

### uses specificity to order comparisons (mostly)

1.  in the case of subsets, uses order of definition to break ties in type specificity
