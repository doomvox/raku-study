
grammar Content-and-Attributes {
	# head is what is left of vertical bar, any non-vertical bar char, or empty
	# attrs is on right of bar
	# attrs is semicolon-separated list of things, can be double-quoted, or empty
	# What we care about are "head" and "meta" results

	token TOP {   <head>
				| <head> \s* '|' \s* <metas> }

	token head-word  { <-[|\ \t]>+ }
	token head  { <head-word>+ % <[\ \t]>+ | '' }

	token metas { <meta>* % [ \s* ';' \s* ] \s* } # Semicolon-separated 0-or-more attr

	token meta-word { <-[;\"\ \t]>+ } # Anything without quote or solidus or space
	token meta-words { <meta-word>+ % <[\ \t]>* }
	token inside-quotes { <-[ " ]>+ | '\"' }
	token meta-quoted { '"' ~ '"' <inside-quotes>* }
	token meta { <meta-words> | <meta-quoted> }
}

my regex fcode {
    ^ $<content>= (<-[\|]>*)\s* \|? \s* $
    |
    ^ $<content>=[ .* \S]*\s*<?before \|>
        \|
        [\s* $<meta>=( .*? \S )\s*]+ % \;
    \s*
    $
}

my @s = 'stuff | data ; more data',
        '| data; and more',
        'stuff |',
        '|data',
        'stuff | dkdkll ; kdkkd  ; stubborn ',
		'stuff | "dkdkll ; kdkkd" ; stubborn '
        ;

for @s {
    say ">\n$_#\n";
#    say $_ ~~ /<fcode>/, "\ntook ", (now - ENTER now), " sec";
    say Content-and-Attributes.parse($_), "\ntook ", (now - ENTER now), " sec";
}
