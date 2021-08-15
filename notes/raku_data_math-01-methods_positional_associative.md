- [distunguishing positional and associative types](#org6b5e1eb)
  - [smart-match against Positional or Associative (checking for a role)](#orge8a0f68)
    - [easier than I realized: thought I might need to check available methods](#org4473d7c)
  - [.<sup>methods</sup>>>.name](#org3644658)
  - [using \*-KEY and \*-POS methods as fingerprint](#org4d2ac61)


<a id="org6b5e1eb"></a>

# distunguishing positional and associative types


<a id="orge8a0f68"></a>

## smart-match against Positional or Associative (checking for a role)


<a id="org4473d7c"></a>

### easier than I realized: thought I might need to check available methods


<a id="org3644658"></a>

## .<sup>methods</sup>>>.name

| Associative                | Positional         |
| (Hash)                     | (Array)            |
| ACCEPTS                    | ACCEPTS            |
| ASSIGN-KEY                 |                    |
|                            | ASSIGN-POS         |
| AT-KEY                     |                    |
|                            | AT-POS             |
|                            | Array              |
| BIND-KEY                   |                    |
|                            | BIND-POS           |
| BUILDALL                   | BUILDALL           |
| BagHash                    | BagHash            |
| Bag                        | Bag                |
| Bool                       | Bool               |
|                            | CALL-ME            |
| Capture                    | Capture            |
| DELETE-KEY                 |                    |
| DUMP                       |                    |
| EXISTS-KEY                 |                    |
|                            | EXISTS-POS         |
| FLATTENABLE<sub>HASH</sub> |                    |
| FLATTENABLE<sub>LIST</sub> |                    |
| Hash                       |                    |
| Int                        | Int                |
| IterationBuffer            |                    |
| List                       | List               |
| Map                        |                    |
| MixHash                    | MixHash            |
| Mix                        | Mix                |
| Numeric                    | Numeric            |
| STORE                      | STORE              |
| SetHash                    | SetHash            |
| Set                        | Set                |
|                            | Slip               |
| Str                        | Str                |
|                            | Supply             |
| WHICH                      |                    |
| antipairs                  | antipairs          |
| append                     | append             |
| categorize-list            |                    |
|                            | chrs               |
| classify-list              |                    |
| clone                      |                    |
|                            | combinations       |
| default                    |                    |
| dynamic                    |                    |
|                            | eager              |
| elems                      | elems              |
|                            | end                |
| flat                       | flat               |
| fmt                        | fmt                |
|                            | from-iterator      |
|                            | from-slurpy-flat   |
|                            | from-slurpy-onearg |
|                            | from-slurpy        |
|                            | from               |
| gist                       | gist               |
| hash                       |                    |
| head                       |                    |
| hyper                      | hyper              |
| invert                     | invert             |
|                            | is-lazy            |
| item                       | item               |
| iterator                   | iterator           |
| keyof                      |                    |
|                            | join               |
| keys                       | keys               |
| kv                         | kv                 |
| lazy-if                    | lazy-if            |
| lazy                       | lazy               |
| list                       | list               |
| name                       |                    |
| new                        | new                |
| of                         | of                 |
| pairs                      | pairs              |
|                            | permutations       |
| pick                       | pick               |
|                            | pop                |
|                            | prepend            |
| push                       | push               |
| race                       | race               |
| raku                       | raku               |
|                            | reification-target |
|                            | reverse            |
| roll                       | roll               |
|                            | rotate             |
|                            | shift              |
|                            | sink               |
| sort                       | sort               |
|                            | sum                |
|                            | tail               |
|                            | to                 |
|                            | unshift            |
| values                     | values             |

| Associative only           |
|-------------------------- |
| ASSIGN-KEY                 |
| AT-KEY                     |
| BIND-KEY                   |
| DELETE-KEY                 |
| DUMP                       |
| EXISTS-KEY                 |
| FLATTENABLE<sub>HASH</sub> |
| FLATTENABLE<sub>LIST</sub> |
| Hash                       |
| IterationBuffer            |
| Map                        |
| WHICH                      |
| categorize-list            |
| classify-list              |
| clone                      |
| default                    |
| dynamic                    |
| hash                       |
| head                       |
| keyof                      |
| name                       |

| Positional only    |
|------------------ |
| ASSIGN-POS         |
| AT-POS             |
| Array              |
| BIND-POS           |
| CALL-ME            |
| EXISTS-POS         |
| Slip               |
| Supply             |
| chrs               |
| combinations       |
| eager              |
| end                |
| from               |
| from-iterator      |
| from-slurpy        |
| from-slurpy-flat   |
| from-slurpy-onearg |
| is-lazy            |
| join               |
| permutations       |
| pop                |
| prepend            |
| reification-target |
| reverse            |
| rotate             |
| shift              |
| sink               |
| sum                |
| tail               |
| to                 |
| unshift            |


<a id="org4d2ac61"></a>

## using \*-KEY and \*-POS methods as fingerprint

```perl6
sub is_associative ( $item ) {
    my @assoc_methods = 
       < ASSIGN-KEY
         AT-KEY
         BIND-KEY
         DELETE-KEY
         EXISTS-KEY >;
    my $result = so
       any( $item.^methods>>.name ) eq all( | @assoc_methods );
    return $result;
}

sub is_positional ( $item ) {
    my @pos_methods = 
       < ASSIGN-POS
         AT-POS
         BIND-POS
         EXISTS-POS >;
    my $result = so
       any( $item.^methods>>.name ) eq all( | @pos_methods );
    return $result;
}
```
