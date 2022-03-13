- [File Metadata](#org44d656e)
  - [a rant in progress](#org5c56164)
  - [problems with the standard file system model](#org6603f88)
    - [](#orgbe70d48)
  - [naming components](#org0d0c198)
    - [raku .parts and friends disappointing](#org530755d)
    - [perl cpan module <:Basename>](#orgd38200f)


<a id="org44d656e"></a>

# File Metadata


<a id="org5c56164"></a>

## a rant in progress


<a id="org6603f88"></a>

## problems with the standard file system model


<a id="orgbe70d48"></a>

### 


<a id="org0d0c198"></a>

## naming components


<a id="org530755d"></a>

### raku .parts and friends disappointing


<a id="orgd38200f"></a>

### perl cpan module <:Basename>

If @suffixes are given each element is a pattern (either a string or a "qr//") matched against the end of the $filename. The matching portion is removed and becomes the $suffix.

fileparse("*foo/bar/baz.txt", qr*\\.[^.]\*/);
