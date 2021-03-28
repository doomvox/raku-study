#!/usr/bin/env perl6
# 
# doomfiles_browse_sequence-ii.raku            28 Mar 2021 

use v6;

my grammar df {
    regex TOP         { '<HTML>'  <head><body> '</HTML>' \s*                                                       }
#    regex TOP         { '<HTML>'  <head><body> '</HTML>' \s                                                       }
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
    # Traditional:  McNODE_NAME_7
    regex node_name   { <[A..Zc0..9_-]>*? }  
#    token node_name   { <[A..Zc0..9_-]>*? }  
    regex label       { <-[<]>*? } # > 
    }

my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";
chdir( $loc );

my $init = 'TOP';
say $init;
my $init_file = "$init.html";

my $node = handle_first_node( $init_file );
say $node.Str if $node;

do_rest_whole_parse( $node );

sub do_rest_whole_parse( $node ) {
    while ( $node ) {
        my $file="$node.html";
        my $match = df.parsefile( $file ); 
        $node = $match.<body><control_2>.<next_link>.[0].<node_name>; 
        say $node.Str if $node;
    }
}

sub handle_first_node ( Str $init = 'TOP.html') {
#    my $init = "TOP.html";
#    my $loc = "/home/doom/End/Stage/Mirthless/doomfiles";  ## TODO better to use pwd?
    my $next_node;
    for "$init".IO.lines -> $line {
        my $match = df.parse( $line, :rule('next_link') ); 
        $next_node = $match.[0].<node_name>; 
        last if $match;
    }
    return $next_node;
}


### Eeek
### 
## ...
# ACT_ONE
# IMPROPER_BOHEMIANS
# GREENWICH_SECEDES
# BURNING_MOMENTS
# MoarVM panic: Memory allocation failed; could not allocate 1007328 bytes

## Note, it also hangs and chugs on DELANY
# Does it have trouble with larger files?
#  -r--r--r--  1 doom doom   14360 Mar 20 10:37 DELANY.html
#  -r--r--r--  1 doom doom   30200 Mar 20 10:37 BURNING_MOMENTS.html
# Too much backtracking?

## It is one of the larger files (none of the larger ones are hit earlier)
#   -r--r--r--  1 doom doom  278451 Mar 20 10:38 WHATSNEW.html
#   -r--r--r--  1 doom doom  164552 Mar 20 10:38 CONTENTS.html
#   -r--r--r--  1 doom doom   58222 Mar 20 10:37 NAUGHT_SEVEN.html
#   -r--r--r--  1 doom doom   47381 Mar 20 10:37 DINOSAUR_WARS.html
#   -r--r--r--  1 doom doom   39227 Mar 20 10:37 WAYOUT.html
#   -r--r--r--  1 doom doom   32594 Mar 20 10:37 BICYCLES.html
#   -r--r--r--  1 doom doom   31826 Mar 20 10:37 BURNING_WILD.html
#   -r--r--r--  1 doom doom   31420 Mar 20 10:37 THE_VOICE_OF_DOOM.html
#   -r--r--r--  1 doom doom   30200 Mar 20 10:37 BURNING_MOMENTS.html
#   -r--r--r--  1 doom doom   25213 Mar 20 10:37 SCAFFOLDING.html

