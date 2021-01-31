#!/usr/bin/env perl6
# 
# defining_regexes-whitespace_patterns.pl6            26 Jan 2021 

use v6;
use Test;

# regex docs are pretty through and logical really:
#   https://docs.raku.org/language/regexes

{
    # Q: regexes are like subs... do they share the same namespace? A: Yes
    my sub normal { return 'beige' };

    ## Need to use "my" on these or you get this mysterious error:
    ## regex normal { frampton };
    ## Useless declaration of a has-scoped method in mainline (did you mean 'my regex normal'?)

    ## Since there's a sub "normal" can't have a regex of the same name:
    ## my  regex normal { frampton_live };  # Redeclaration of method 'normal'
}


{
    # The perl5 style:  $pat = qr{ ... }xms;
    # Similar version in perl6, an "anonymous" regex

    my $pat = rx:i{ « .*? zilla };

    my @monsters = < godzilla mothera rhodan tingler mozilla dracula horta blob megazilla >;
    my @matches = @monsters.grep( $pat ); # note: no curlies around $pat, it's already a code block (right?)
    say @matches; # [godzilla mozilla megazilla]

    # there are a bunch of small variations of that form:
    my $pat2 = /^d/;
    my @found = @monsters.grep( $pat2 );
    say @found; # [dracula]
}

{
    # there are myriad ways of matching whitespace, the following over-elaborate 
    # code is a way of exercising them

    # (I remember seeing something puzzling, but can't find it now)

    # patterns that use a particular built-in character class shortcut
    my %pat = (
        n =>  rx { ^  .*? \n },
        s =>  rx { \s .*? \s },
        t =>  rx { \t .*? \t },
        h =>  rx { \h .*? \h },
        );
    # strings the patterns should match (not exclusive, though) ((same code confusing?)
    my %str = (
        n =>  "line\n",
        s =>  " word ",
        t =>  "\tfield\t",
        h =>  "  field\t",
        );

    my @k = %str.keys;
#     my @cross = @k X @k;
#     say "cross: ", @cross;
#     say $_ for @cross;
#     for @cross -> @pair {
#         my $code = @pair[0] ~ @pair[1];
#         say $code;
#     }
    # My Zs still need work:
    #    my @codes_z = Z~ $_.values for @cross;
    #    say "codes_z: ", @codes_z;    

    # given list of single char codes, gets all permutations of two char codes
    # Q: is there a better way?
    my @codes =  ( @k X @k ).map({ $_[0] ~ $_[1] });
    say "codes: ", @codes;
    my @codes2 =  ( @k X @k ).map({ .[0] ~ .[1] });
    say "codes2: ", @codes2;
    my @codes3 =  ( @k X @k ).map({ .join });
    say "codes3: ", @codes3;
    # earlier idea, using function form of map
    my @codes0 = map({ .join }, (@k X @k) );  ## Note: closing paren has to include 2nd argument
    say "codes0: ", @codes0;

    my %expected = ( 
        'ss' => True,
        'sn' => False,
        'st' => False,
        'sh' => True,
        'ns' => False,
        'nn' => True,
        'nt' => False,
        'nh' => False,
        'ts' => True,  # Because \s also matches \t
        'tn' => False,
        'tt' => True,
        'th' => True,
        'hs' => True,  # Because \h also matches " "
        'hn' => False,
        'ht' => False,  # Pattern uses \t but string has a " "
        'hh' => True,
    );

    ## invert this, loop over patterns, check against all strings

    for %pat.kv -> $k, $pat {
        say "___";
        # say "key: $k,  pat: " ~ $pat.gist;

        for %str.kv -> $j, $str {
            my $result = $str ~~ $pat;
            # say " $j $k "; ## string index then pattern index
            my $pat_str = $pat.gist;
            # say "  pat: ", $pat_str;
            # say $result;
            my $case_code = $j ~ $k;
            my $expected = %expected{ $case_code };
#            my $str_lbl = $str.subst("\n", '\n');
            my $str_lbl =  $str;
            $str_lbl = $str_lbl.subst("\n", '\n', :g);
            # $str_lbl ~~ s:g/\n/'\n'/;
            $str_lbl = $str_lbl.subst("\t", '\t', :g);             ## Note, no quotes on :g !
            # $str_lbl ~~ s:g/\t/'\t'/;
            $str_lbl = '"' ~ $str_lbl ~ '"';
            is( so $result, $expected, "$case_code: $str_lbl ~~  $pat_str;");
        }
    }

#     say "", $str_n ~~ //;
             
    }

{
    say "---";
    ## \h (horizontal whitespace) matches spaces
    say  ' word ' ~~ rx { \h .*? \h } ;
    ## ｢ word ｣

    ##  \s matches tabs
    say '	field	' ~~  rx { \s .*? \s };  ## tabs vs spaces: fail to match?
    ## ｢	field	｣
    say so "\tfield\t" ~~ rx { \t };  # True
    say so "\tfield\t" ~~ rx { \s };  # True
    say so "\tfield\t" ~~  rx { \s .*? \s };   # True

    ## \s can match vertical whitespace like \n
    say so "\n\n" ~~ rx { \s };  # True


    say "~~~";
    ## mixed spaces and tabs matched by \s
    say so '  field	' ~~  rx { \s .*? \s };  # True
    say so " field\t" ~~  rx { \s .*? \s };      # True

    ## \s matches against tabs
    say so '	field	' ~~  rx { \s .*? \s };  # True
    say so "\tfield\t" ~~  rx { \s .*? \s } ;    # True

}



# rx:r:s/pattern/;            # :r (:ratchet) and :s (:sigspace) adverbs, defining 
#                             # a ratcheting regex in which whitespace is significant

# Alternatively, by way of shorthand, it is also possible (and
# recommended) to use the rule and token variants of the regex
# declarator for defining a Regex when the :ratchet and :sigspace
# adverbs are of interest:

## token is just like using rachet option:
#     regex R { :r pattern };     # apply :r (:ratchet) to entire pattern 
#  and, alternatively
#     token R { pattern };        # same thing: 'token' implies ':r' 

# There are predefined character classes of the form \w.
# Its negation is written with an upper-case letter, \W.

# \n and \N
# \n matches a logical newline. \N matches a single character that's not a logical newline.

# The definition of what constitutes a logical newline follows the Unicode definition of a line boundary and includes in particular all of: a line feed (LF) \U+000A, a vertical tab (VT) \U+000B, a form feed (FF) \U+000C, a carriage return (CR) \U+000D, and the Microsoft Windows style newline sequence CRLF.

# The interpretation of \n in regexes is independent of the value of the variable $?NL controlled by the newline pragma.
# \t and \T

# \t matches a single tab/tabulation character, U+0009. \T matches a single character that is not a tab.

# Note that exotic tabs like the U+000B VERTICAL TABULATION character are not included here.
# \h and \H

# \h matches a single horizontal whitespace character. \H matches a single character that is not a horizontal whitespace character.

# Examples of horizontal whitespace characters are

# U+0020 SPACE
# U+00A0 NO-BREAK SPACE
# U+0009 CHARACTER TABULATION
# U+2001 EM QUAD

# Vertical whitespace such as newline characters are explicitly excluded; those can be matched with \v; \s matches any kind of whitespace.
# \v and \V

# \v matches a single vertical whitespace character. \V matches a single character that is not vertical whitespace.

# Examples of vertical whitespace characters: 

# U+000A LINE FEED
# U+000B VERTICAL TABULATION
# U+000C FORM FEED
# U+000D CARRIAGE RETURN
# U+0085 NEXT LINE
# U+2028 LINE SEPARATOR
# U+2029 PARAGRAPH SEPARATOR

# \s and \S

# \s matches a single whitespace character. \S matches a single character that is not whitespace.

# say $/.prematch if 'Match the first word.' ~~ / \s+ /;
# # OUTPUT: «Match␤»

# \d and \D

# \d matches a single digit (Unicode property N) and \D matches a single character that is not a digit.

# 'ab42' ~~ /\d/ and say ~$/;     # OUTPUT: «4␤» 
# 'ab42' ~~ /\D/ and say ~$/;     # OUTPUT: «a␤»

# Note that not only the Arabic digits (commonly used in the Latin alphabet) match \d, but also digits from other scripts.

# Examples of digits are:

# U+0035 5 DIGIT FIVE
# U+0BEB ௫ TAMIL DIGIT FIVE
# U+0E53 ๓ THAI DIGIT THREE
# U+17E5 ៥ KHMER DIGIT FIVE

# \w and \W

# \w matches a single word character, i.e. a letter (Unicode category L), a digit or an underscore. \W matches a single character that is not a word character.

# Examples of word characters:

# 0041 A LATIN CAPITAL LETTER A
# 0031 1 DIGIT ONE
# 03B4 δ GREEK SMALL LETTER DELTA
# 03F3 ϳ GREEK LETTER YOT
# 0409 Љ CYRILLIC CAPITAL LETTER LJE

# \c and \C
# \c takes a parameter delimited by square-brackets which is the name of a Unicode character as it appears in the Unicode Character Database (UCD) and matches that specific character. For example:

# 'a.b' ~~ /\c[FULL STOP]/ and say ~$/;    # OUTPUT: «.»

# \C matches a single character that is not the named Unicode character.

# Note that the word "character" is used, here, in the sense that the UCD does, but because Raku uses NFG, combining code points and the base characters to which they are attached, will generally not match individually. For example if you compose "ü" as "u\x[0308]", that works just fine, but matching may surprise you:

# say "u\x[0308]" ~~ /\c[LATIN SMALL LETTER U]/;    # OUTPUT: «Nil»

# To match the unmodified character, you can use the :ignoremark adverb.
# \x and \X

# \x takes a parameter delimited by square-brackets which is the hexadecimal representation of the Unicode codepoint representing the character to be matched. For example:

# 'a.b' ~~ /\x[2E]/ and say ~$/;    # OUTPUT: «.»

# \X matches a single character that is not the given Unicode codepoint.

# In addition, \x and \X can be used without square brackets, in which case, any characters that follow the x or X that are valid hexadecimal digits will be consumed. This means that all of these are equivalent:

# /\x2e/ and /\x002e/ and /\x00002e/

# But this format can be ambiguous, so the use of surrounding whitespace is highly recommended in non-trivial expressions.

# For additional provisos with respect to combining codepoints, see \c and \C.

# <alnum> 	\w 	<alpha> plus <digit>
# <alpha> 		Alphabetic characters plus underscore (_)
# <blank> 	\h 	Horizontal whitespace
# <cntrl> 		Control characters
# <digit> 	\d 	Decimal digits
# <graph> 		<alnum> plus <punct>
# <lower> 	<:Ll> 	Lowercase characters
# <print> 		<graph> plus <space>, but no <cntrl>
# <punct> 		Punctuation and Symbols (only Punct beyond ASCII)
# <space> 	\s 	Whitespace
# <upper> 	<:Lu> 	Uppercase characters
# <xdigit> 		Hexadecimal digit [0-9A-Fa-f]


# Besides the built-in character classes, the following other rules are built into Raku:
# Regex |Zero-width 	Matches 	
# <same> 	yes 	Matches between two identical characters
# <wb> 	yes 	Word boundary
# <ws> 	no 	Whitespace, same as C« <!ww>\s* »
# <ww> 	yes 	Within word
# <ident> 	no 	Basic identifier (no support for C<'> or C<->). Same as C« <.alpha> \w* »


# Unicode properties

# The character classes mentioned so far are mostly for convenience; another approach is to use Unicode character properties. These come in the form <:property>, where property can be a short or long Unicode General Category name. These use pair syntax.

# To match against a Unicode property you can use either smartmatch or uniprop:

# "a".uniprop('Script');                 # OUTPUT: «Latin␤» 
# "a" ~~ / <:Script<Latin>> /;           # OUTPUT: «｢a｣␤» 
# "a".uniprop('Block');                  # OUTPUT: «Basic Latin␤» 
# "a" ~~ / <:Block('Basic Latin')> /;    # OUTPUT: «｢a｣␤»


# These are the Unicode general categories used for matching:
# Short 	Long
# C 	Other
# Cc 	Control or cntrl
# Cf 	Format
# Cn 	Unassigned
# Co 	Private_Use
# Cs 	Surrogate
# L 	Letter
# LC 	Cased_Letter
# Ll 	Lowercase_Letter
# Lm 	Modifier_Letter
# Lo 	Other_Letter
# Lt 	Titlecase_Letter
# Lu 	Uppercase_Letter
# M 	Mark
# Mc 	Spacing_Mark
# Me 	Enclosing_Mark
# Mn 	Nonspacing_Mark
# N 	Number
# Nd 	Decimal_Number or digit
# Nl 	Letter_Number
# No 	Other_Number
# P 	Punctuation or punct
# Pc 	Connector_Punctuation
# Pd 	Dash_Punctuation
# Pe 	Close_Punctuation
# Pf 	Final_Punctuation
# Pi 	Initial_Punctuation
# Po 	Other_Punctuation
# Ps 	Open_Punctuation
# S 	Symbol
# Sc 	Currency_Symbol
# Sk 	Modifier_Symbol
# Sm 	Math_Symbol
# So 	Other_Symbol
# Z 	Separator
# Zl 	Line_Separator
# Zp 	Paragraph_Separator
# Zs 	Space_Separator
