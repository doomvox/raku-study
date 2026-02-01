#!/usr/bin/raku

# orgmode_parse_recursive.raku
# Saturday November  8, 2025  10:00 PM

# simplified task: parse org-mode file with headings alone

# STATUS: not working, just thinking about it.

# goal get a recursive grammar working--
#  some token will be defined (possibly indifectly) in terms of itself

# approach: need a definition (maybe a 'tree') that matches 
# an indent, heading text, *and* a following tree
# maybe: heading text matches up to another indent (or the eof)


grammar orgmode {
        token TOP { <heading>+ }
        token heading { <indent> \s* <headtext>}
        token indent { ^^ \s* <[*]>+? <before \s+> }

        # heading text is one line, so ends at a newline
        rule headtext { \N*  }  ## anything that's not a newline
}

my $dat_loc = $*PROGRAM.parent.add('dat');
chdir( $dat_loc );

{
        my $file = "simple.org";
        my $raw = $file.IO.slurp.chomp;
        say "===";
        say $raw;
        say "===";

        my $o = orgmode.parse( $raw );
#        say $o;
        for $o.<heading> -> $h {
           say "indent: ",    $h.<indent>;
           say "headtext: ",  $h.<headtext>;
           say "---";
        }   


}
