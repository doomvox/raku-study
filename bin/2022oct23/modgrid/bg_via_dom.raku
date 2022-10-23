constant $in-path = 'evaluationlists'; # from `curl -O https://www.modulargrid.net/e/modules/evaluationlists`
constant $all = True;

use DOM::Tiny;
my $d = DOM::Tiny.parse($in-path.IO.slurp);

my @ol = $d.find("h2 + ol");
warn if @ol != 2;

my %h;
for @ol[0].find("li") -> $li {
    # <li>DivKid <a href="/e/divkid-ochd" title="Detail info for the top rated Module ochd">ochd</a> Ø 4.78 <small>(110)</small></li>
    my ($company, $a, $null_rating, $small) = $li.list;
    my $href = $a<href>;

    %h{$href}<comp>  =  $company.text.trim;
    %h{$href}<name>  =  $a.text;
    %h{$href}<rate>  = +$null_rating.text.subst(/^ \s* 'Ø' \s* /);
    %h{$href}<count> = +$small.text.subst(:g, /\D/);
    %h{$href}<rate_pos> = ++$;      # Trusting their sort order.
}

for @ol[1].find("li") -> $li {
    # <li>DivKid <a href="/e/divkid-ochd" title="Detail info for the essential Module ochd">ochd</a> in 24052 Racks</li>    
    my ($company, $a, $in) = $li.list;
    my $href = $a<href>;

    %h{$href}<comp>  =  $company.text.trim;
    %h{$href}<name>  =  $a.text;
    %h{$href}<rack>  = +$in.text.subst(:g, /\D/);
    %h{$href}<rack_pos> = ++$;      # Trusting their sort order.
}

# We don't need to lookup records by key anymore,
# so stash the key in the record, and only use an array from here on.
.value.<href> = .key for %h;
my @modules = %h.values;

for @modules {
    .<rate_pos> //= 400;
    .<rack_pos> //= 400;
    .<rack>     //=   0;
    .<rate>     //=   0;
    .<count>    //=   0;
    .<rank>       = .<rate_pos rack_pos>.sum;
}

for @modules.sort({ .<rank>, .<rate_pos>, .<rack_pos> }) {
    next unless $all or .<rate> and .<rack>;
    say join "\t",
        .<rank    >.fmt('%7d'),
        .<rate_pos>.fmt('%7d'),
        .<rack_pos>.fmt('%7d'),
        .<rate    >.fmt('%7.2f'),
        .<count   >.fmt('%7d'),
        .<rack    >.fmt('%7d'),
        .<href    >.fmt('%-63s'),
        .<comp    >.fmt('%-31s'),
        .<name    >,
    ;
}

=for finish

original code:
curl -O https://www.modulargrid.net/e/modules/evaluationlists
raku -e 'use DOM::Tiny; my $d = DOM::Tiny.parse("evaluationlists".IO.slurp); my @ol = $d.find("h2 + ol"); for @ol -> $ol { say .Str and exit for $ol.find("li")}'
