- [meeting notes May 16, 2021](#org305f59a)
  - [agenda](#orgfebe9bb)
    - [raku classes as data containers (postponed) (joe brenner)](#org5aa0441)
    - [find/grep variants in raku revisited (joe brenner)](#org36e699b)
    - [bruce gray rosettacode](#org39aa859)
    - [argument passing signatures (joe brenner)](#org500f5ba)
    - [super flat](#orgd9d7679)
    - [type system: what is accepted by what](#org15c54e9)
    - [go through my perl5 templates: how much is core raku now?](#orgf1007ee)


<a id="org305f59a"></a>

# meeting notes May 16, 2021


<a id="orgfebe9bb"></a>

## agenda


<a id="org5aa0441"></a>

### raku classes as data containers (postponed) (joe brenner)

1.  <https://github.com/doomvox/raku-study/tree/main/bin/2021apr25/data_container_class.raku>


<a id="org36e699b"></a>

### find/grep variants in raku revisited (joe brenner)


<a id="org39aa859"></a>

### bruce gray rosettacode

1.  <http://rosettacode.org/wiki/Coprime_triplets#Raku>

2.  <https://rosettacode.org/wiki/Tree_from_nesting_levels#Raku>


<a id="org500f5ba"></a>

### argument passing signatures (joe brenner)

1.  /home/doom/End/Cave/Ice/Xtal/Perl6/passing<sub>args.org</sub>

2.  /home/doom/End/Cave/Perl6/Wall/raku-study/bin/2021may02/mixing<sub>named</sub><sub>args</sub><sub>and</sub><sub>positional</sub><sub>ones.raku</sub>


<a id="orgd9d7679"></a>

### super flat

1.  <https://stackoverflow.com/questions/67515479/what-is-a-simple-and-elegant-way-to-flatten-lists-or-arrays-of-arbitrary-depths>

2.  <https://stackoverflow.com/questions/41648119/how-can-i-completely-flatten-a-list-of-lists-of-lists>

3.  <https://en.wikipedia.org/wiki/Superflat>

4.  a job for flat?

    1.  <https://stackoverflow.com/questions/67373726/why-are-empty-raku-shaped-arrays-truthy>
    
        "As a follow up, I wonder if a good way to test 'all elements are undefined' is @shaped-array.any.so ???"
        
        1.  (b.g. suggest just usine none)
        
            ```perl6
            my @a =   Any xx 3;
            my @b = |(Any xx 2), 0;
            say .raku for :@a, :@b;  
             ## :a([Any, Any, Any])
            say @a.none.defined.so;
            say @b.none.defined.so;
            ```
            
            :b([Any, Any, 0]) True False


<a id="org15c54e9"></a>

### type system: what is accepted by what

1.  is anything ever cast automatically

    1.  when can you Cool


<a id="orgf1007ee"></a>

### go through my perl5 templates: how much is core raku now?
