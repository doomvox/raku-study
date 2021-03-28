#!/usr/bin/env perl6
# 
# grammars_and_regexps-parsing_doomfiles.pl6   March 26, 2021  
# originally:
# grammars_and_regexps.pl6            16 sep 2018 

use v6;

## Sample content of a "doomfiles" page
my $content = define_content();

# <PRE>                                <A HREF="THIN_VENEER.html">[PREV - THIN_VENEER]</A>    <A HREF="TOP.html">[TOP]</A></PRE>
# <H1 align="left">THE_TOY_WEB</H1>
#
#
# <PRE>
#                                                   Sept 25, 2006
#   ...
# --------
# <A HREF="ACCESS_RAMP.html">[NEXT - ACCESS_RAMP]</A>
# </PRE>

## anchors:  prev, top, next

my grammar df {
    regex TOP         { '<HTML>'  <head><body> '</HTML>' \s*                                                       }
    regex head        { '<HEAD>' \s* <title> '</HEAD>' \s*                                                         }
    regex title       { '<TITLE>' 'The doomfiles' ' - ' <node_name> '.html' '</TITLE>' \s*                         }
    regex body        { '<BODY>' \s*  <control_1>  \s* <h1> \s* '<PRE>' <stuff> <control_2> '</PRE>' '</BODY>' \s* }
    regex control_1   { '<PRE>' \s+ <prev_link> \s+ <link> \s* '</PRE>'                                            }
    regex h1          { '<H1' [\s+ 'align="left"'] '>' <node_name> '</H1>'                                         }
    regex ruler       { '--------'                                                                                 }
    regex control_2   { <ruler> \s+ <next_link> \s*                                                                }
    regex stuff       { ( .*? )                                                                                    }

    regex link        { '<A' \s+ 'HREF="' <node_name> '.html' '">' <label> '</A>'                                  }

    regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ {} $0 ']' '</A>'              }
    regex next_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[NEXT -' \s+ {} $0 ']' '</A>'              }

#    regex node_name   { <-[.]>*? }  ## first cut, better to be explicit
    # Traditional:  McNODE_NAME
    regex node_name   { <[A..Zc_-]>*? }  
    regex label       { <-[<]>*? }          
    }
## TODO  o  more decomposition, e.g. an html_ext token
##       o  find better way to do pattern back references
##       o  deploy 'token' & 'rule'?

my $link_1 = '<A HREF="THIN_VENEER.html">[PREV - THIN_VENEER]</A>';
my $link_2 = '<A HREF="TOP.html">[TOP]</A>';

## (0.0) was having trouble with quoting syntax
## manually "bisext" the problem pattern-- cut&paste to alternate script
###  => verified this is largely an issue on the emacs side.
## alternate quoting, e.g. single quotes.
###  => this clearly is easier on this emacs mode

## (0.1) 
## Note that this (fairly natural mistake) yields an incomprehensible error:
#    my $match = df.parse( $content, 'link' );
## Too many positionals passed; expected 2 arguments but got 3
## this is the right way:
#   my $match = df.parse( $content, :rule('link') );# 

## (0.2)
## extracts node_name and label, but with each character exposed as not_pointy (inelegant)
#  because I was doing this:
#    regex link        { '<A' \s+ 'HREF="' <node_name> '.html' '">' <label> '</A>'                                  }
#    regex label      { <not_pointy>*? } 
#    regex not_pointy { <-[<]> } # > 

## my $match_1 = df.parse( $link_1, :rule('link') );
# say $match_1;
## my $match_2 = df.parse( $link_2, :rule('link') );
# say $match_2;
## Would like non-capturing named groups.  Any way to do that?


## (0.5) was having a lot of trouble with syntax-coloring with patterns matching pointies.
## single-quotes work better than back-whacks, but even so I hit one of these:
### regex label       { <-[<]>*? } # > # gratuitous pointy as hint to syntax-coloring

## (1) Error message when you don't have a TOP is okay, but only okay:
# No such method 'TOP' for invocant of type 'df'.  Did you mean 'to'?

# (2)
## say "^^^$content^^^";

## There's a newline at the end:
# </PRE></BODY></HTML>
# ^^^

## So this doesn't match:
#    regex TOP { '<HTML>' <stuff> '</HTML>' }
## But this does:
#    regex TOP { '<HTML>' <stuff> '</HTML>' \s+ }


## (3) Q: if you did this would you get a name collison on "stuff"?
#     regex TOP { '<HTML>' <stuff> '</HTML>' \s+ }
#     regex head { '<HEAD>' <stuff> '</HEAD>' \s+ }
#     regex body { '<BODY>' <stuff> '</BODY>' \s+ }

## (4) Not letting it get bog me down, but I feel like I don't have a good feel for where to bound components.
##     e.g. "match not-that until that" is a common regex idiom, but if you make "not-that-until" a sub-component.
##     it feels weird to me it's not complete without the end condition "that".  Maybe it'd be neater to both
##     do a zero-width lookahead, *and also* match for it right afterwards... or match for *something*
##     to move pos past the thing.    Might be nice to capture differently than boundaries,
##     e.g. can you have a sub-component that *doesn't* capture?
##     Use variable interpolation for those? 

## (5) 
# ## need an empty code-block to "publish" the previously matched groups 
# ## to re-use them in a pattern:
# say so "blah => blah" ~~ m/( \w*? ) \s* '=>' \s* {} $0 /; # True
## See: https://docs.raku.org/language/regexes

## (6) 
## so this works, but not the gratuitous capture parens to be able to use $0:
##    regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ {} $0 ']' '</A>'              }
## is there a neater way to refer to <node_name>?

## This is a syntax error:
#    regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ {} $/.node_name ']' '</A>'              }
## Maybe this would work:
#    regex prev_link   { '<A' \s+ 'HREF="' ( <node_name> ) '.html' '">' '[PREV -' \s+ { $/.node_name } ']' '</A>'              }

my $match = df.parse( $content ); 
say $match;

# say $match.next_link.node_name;
## I call LTA:
##   bindkey_o requires a concrete object (got a VMNull type object instead)
say "---";
# say $match.control_2.next_link.node_name;  ##  ｢｣
# say $match.control_2; ## #<failed match> ??

##  (7) I am *still* having a *fucking hard time* getting match objects to tell me shit.  WTF?
##
## If you're supposed to use angle brackets to deref, why don't you get errors/warnings if you don't?
## 
# say $match.<control_2>.<next_link>.<node_name>;  ##  Nil
# say $match.<control_2>; ## Nil
# say $match.<body><control_2>.<next_link>.<node_name>;   ## Nil
# say $match.<TOP><body><control_2>.<next_link>.<node_name>;   ## Nil
# ## If I'm not doing an <blah> on an existing element, why no warnings?

say "+++";
## say $match.<body>; ## this actually dumps a bunch of stuff

# say $match.<body><control_2>.<next_link>.<0>.<node_name>;    ## Nil
# ## say $match.<body><control_2>.<next_link>.0.<node_name>;   ## Malformed postfix call (( nice to no *something* errors out ))

say $match.<body><control_2>.<next_link>;
# ｢<A HREF="ACCESS_RAMP.html">[NEXT - ACCESS_RAMP]</A>｣
#  0 => ｢ACCESS_RAMP｣
#   node_name => ｢ACCESS_RAMP｣

say $match.<body><control_2>.<next_link>.keys; ## (0)

say "^^^";
say $match.<body><control_2>.<next_link>.[0].<node_name>;  # ｢ACCESS_RAMP｣

## Okay, so that's works at last: note that the gratuitious $0 capture 
## makes dereferencing a little more complex...

say "===";
# say $match;

##=======
sub define_content {
my $content = qq:to/END_CONTENT/; 
  <HTML><HEAD>
  <TITLE>The doomfiles - THE_TOY_WEB.html</TITLE>
  </HEAD><BODY>
  <PRE>                                <A HREF="THIN_VENEER.html">[PREV - THIN_VENEER]</A>    <A HREF="TOP.html">[TOP]</A></PRE>
  <H1 align="left">THE_TOY_WEB</H1>


  <PRE>
                                                    Sept 25, 2006
  
  Conclusion: anonymity is only good for
  toy sites; it's not for serious use.          Note though, that
                                                "anonymity" has many
                                                meanings on the web:
  Part of the problem: the
  "social network" sites are                       A logged-in handle is
  *happy* to be toys.                              better than nothing
  
                                                       <A HREF="SURROGATE_TRUTH.html">SURROGATE_TRUTH</A>

  
  
  
  --------
  <A HREF="ACCESS_RAMP.html">[NEXT - ACCESS_RAMP]</A>
  </PRE></BODY></HTML>
  END_CONTENT

return $content;
}

exit;

