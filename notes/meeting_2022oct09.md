- [meeting notes October 25, 2022](#org6ca8cef)
  - [the raku study group](#org3b4f38a)
  - [topics](#org23be188)
    - [the modgrid/eurorack problem](#orgee79146)
    - [classify](#org92c56ce)
    - [weekly challenge](#orgd084162)
  - [announcements](#orge6e6bc4)
    - [October 23rd: the next raku study group meeting](#org6ffa9ca)


<a id="org6ca8cef"></a>

# meeting notes October 25, 2022


<a id="org3b4f38a"></a>

## the raku study group

1.  usual links

    1.  these notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022oct09.md>
    
    2.  code examples
    
        1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09>
    
    3.  last meeting notes
    
        1.  <https://github.com/doomvox/raku-study/blob/main/notes/meeting_2022sep25.md>


<a id="org23be188"></a>

## topics


<a id="orgee79146"></a>

### the modgrid/eurorack problem

1.  <https://www.modulargrid.net/e/modules/evaluationlists>

2.  q: doing popularity stats and such

3.  william michels soultion

    ```sh
    perl6 -e 'my @a = lines.antipairs; my @b = @a.sort(*.keys.words[0..*-3]).rotor(2 => -1); my @c; do for @b -> $b { @c.push($b) if $b.
    [0].keys.words[0..*-4] eq $b.[1].keys.words[0..*-4] }; say ($_ => (.[0].value - 100) + .[1].value).antipairs for @c.sort( { (.[0].value
    - 100) + .[1].value});'
    ```
    
    1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09/modgrid_popularity_william_michels.raku>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/modgrid<sub>popularity</sub><sub>william</sub><sub>michels.raku</sub>

4.  bruce gray

    1.  <https://github.com/doomvox/raku-study/tree/main/bin/oct09/modgrid>
    
    2.  /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022oct09/modgrid


<a id="org92c56ce"></a>

### classify

1.  <https://docs.raku.org/routine/classify>


<a id="orgd084162"></a>

### weekly challenge

1.  <https://theweeklychallenge.org/>


<a id="orge6e6bc4"></a>

## announcements


<a id="org6ffa9ca"></a>

### October 23rd: the next raku study group meeting
