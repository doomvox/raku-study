- [File Metadata](#org83ff6a8)
  - [a rant in progress](#org788f982)
  - [problems with the standard file system model](#org50209da)
    - [](#orgdcd8696)
    - [raku .parts and friends disappointing](#org2d62b0f)
    - [perl cpan module <:Basename>](#org143d3b7)


<a id="org83ff6a8"></a>

# File Metadata


<a id="org788f982"></a>

## a rant in progress


<a id="org50209da"></a>

## problems with the standard file system model


<a id="orgdcd8696"></a>

### 


<a id="org2d62b0f"></a>

### raku .parts and friends disappointing


<a id="org143d3b7"></a>

### perl cpan module <:Basename>

If @suffixes are given each element is a pattern (either a string or a "qr//") matched against the end of the $filename. The matching portion is removed and becomes the $suffix.

fileparse("*foo/bar/baz.txt", qr*\\.[^.]\*/);
