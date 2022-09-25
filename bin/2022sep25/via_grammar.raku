my $path = "%*ENV<HOME>/T/d20220911/k23.txt"; # Copy-and-paste from https://www.modulargrid.net/e/modules/evaluationlists

my $to_skip = q:to/END/.lines».trim.Set;
    https://www.modulargrid.net/e/modules/evaluationlists

    Eurorack
    Modules
    Racks
    Patches
    Forum
    Marketplace
    Login
    Register
    ModularGrid uses so-called cookies to ensure it's so-called functionality. We also use dubious tracking scripts. Find out more in the Privacy Policy. We use cookies and wanna let you know.
    Got it.
    Top Modules rated by users
    Popular Modules in racks
    Modules have to be rated at least 30 times to appear in this list. Any module with a rating better than Ø 4.34 is considered to be above average.
    Like a Pro
    If you need more Racks with more HP and more Rows consider to upgrade your ModularGrid Account to a mighty Unicorn Account!
    About the Unicorn Account
    Impressum |
    Privacy Policy |
    AGB
END

grammar EvaluationLists {
    rule TOP {
        \s*
        <product>
        [
            'Ø'  <rating_value> \( <rating_count> \)
          | 'in' <rack_count>      'Racks'
        ]
    }
    regex product      { \S .* \S }
    regex rating_value { \d+ \. \d+ }
    regex rating_count { \d+ }
    regex rack_count   { \d+ }
}

my %h;
for $path.IO.lines {
    next if $_ ∈ $to_skip;

    EvaluationLists.parse($_)
        orelse warn("Unparsed line: " ~ .raku) and next;

    for <rating_value rating_count rack_count> -> $k {
        %h{ $/<product> }{$k} //= .Str with $/{$k};
    } 
}

# We don't need a hash anymore.
# Change from Hash of Records to Array of Records, adding the old key as a new field in the Record.
.value.<module> = .key for %h;
my @a = %h.values;

# Not trusting their sort order.
.<rating_order> = 0   for @a;
.<  rack_order> = 0   for @a;
.<rating_order> = ++$ for @a.grep(*.<rating_count>).sort(*.<rating_count>);
.<  rack_order> = ++$ for @a.grep(*.<  rack_count>).sort(*.<  rack_count>);

.<ranking> = .<rating_order rack_order>.sum for @a;

say .<ranking rating_value rating_count rack_count>.map({ $_ // '' }).fmt("%7s\t"), .<module> for @a.sort(-*.<ranking>);
