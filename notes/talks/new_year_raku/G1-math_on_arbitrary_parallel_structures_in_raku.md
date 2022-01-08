- [Doing operations on arbitrary parallel datastructures in Raku](#orgf712ea0)
  - [A rewrite of Data::Math for Raku](#org290f892)
    - [Data::DualMap](#org2efca8c)


<a id="orgf712ea0"></a>

# Doing operations on arbitrary parallel datastructures in Raku


<a id="org290f892"></a>

## A rewrite of Data::Math for Raku


<a id="org2efca8c"></a>

### Data::DualMap

1.  a work in progress, not yet published

2.  uses multidispatch heavily

3.  entry point modules export a wrapper function that calls the recursive code

4.  different entrypoints for different purposes, e.g. "dualmap-numerics"

    1.  different from Data::Math where I just DWIM'd presuming you want to act on numbers

5.  handling code blocks as operations was easy to implement

    1.  code example: /home/doom/End/Cave/DualMap/Wall/Data-DualMap/t/06-dualmap-numerics<sub>with</sub><sub>codeblock.t</sub>
    
    2.  code in: /home/doom/End/Cave/DualMap/Wall/Data-DualMap/lib/Data/DualMap/Recurse/Numerics.rakumod
    
        1.  search from Block

6.  outstanding issues

    1.  general cleanup (e.g. has comments like "no idea why I needed to do this")
    
    2.  want to support set operations (probably another entry point routine&#x2026;)
    
    3.  not entirely confident in Data::Qualify and "compatible<sub>types</sub>"
    
    4.  still don't see a clean way to handle custom data container objects
