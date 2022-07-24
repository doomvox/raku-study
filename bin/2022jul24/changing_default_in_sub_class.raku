#!/usr/bin/env perl6
# 
# changing_default_in_sub_class.raku            24 Jul 2022 

# https://stackoverflow.com/questions/73045142/how-to-initialize-attributes-inherited-in-a-sub-class

use v6;

# { # original problem
#     class Foo {
#         has $.name;

#         submethod BUILD (:$!name = 'John') {};
#     }
#     my $f = Foo.new;
#     say $f;
#     # OUTPUT: Foo.new(name => "John")

#     # # That works as expected. When I add:
#     # class Bar is Foo {
#     #     submethod BUILD  (:$!name = 'Jane') {};
#     # }


#     ## Error
#     ## Attribute $!name not declared in class Bar


#     class Bar is Foo {
#         submethod TWEAK (:$!name = 'Jane') {};
#     }
#     my $b = Bar.new;
#     say $b;
# }

# say "===";
# { # bill's first stab

#     class Foo {
#         has $!default-name = 'John';
#         has $.custom-name  is rw;

#         submethod TWEAK (:$custom-name) {
#             self.custom-name = $custom-name // $!default-name;
#         };
#     }

#     my $f = Foo.new;
#     say $f; 
#     put "This is class Foo with {$f.custom-name} as name.";


#     class Bar is Foo {}

#     my $b = Bar.new;
#     $b.custom-name = 'Jane';  ## BUT shouldn't need to do this
#     say $b;
#     put "This is class Bar with {$b.custom-name} as name.";
#     }

say "===";
{ # revised
    my class Foo {
        has $!default-name = 'John';
        has $.custom-name  is rw;

        submethod TWEAK (:$custom-name) {
            self.custom-name = $custom-name // $!default-name;
        };
    }

    my $f = Foo.new;
    say $f; 
    put "This is class Foo with {$f.custom-name} as name.";

    my class Bar is Foo {
        submethod TWEAK (:$custom-name) {
            self.custom-name = $custom-name // 'Jane';
        };
    }

    my $b = Bar.new;
    #    $b.custom-name = 'Jane';  ## BUT shouldn't need to do this
    say $b;
    put "This is class Bar with {$b.custom-name} as name.";
    # Foo.new(custom-name => "John")
    # This is class Foo with John as name.
    # Bar.new(custom-name => "Jane")
    # This is class Bar with Jane as name.

    $b.custom-name = 'Janezilla'; 
    put "This is class Bar with {$b.custom-name} as name.";
    # This is class Bar with Janezilla as name.
}

say "===";
{ # revised
    my class Foo {
        has $.custom-name  is rw = 'John';
    }

    my $f = Foo.new;
    say $f; 
    put "This is class Foo with {$f.custom-name} as name.";

    my class Bar is Foo {
        submethod TWEAK (:$custom-name) {
            self.custom-name = $custom-name // 'Jane';
        };
    }

    my $b = Bar.new;
    #    $b.custom-name = 'Jane';  ## BUT shouldn't need to do this
    say $b;
    put "This is class Bar with {$b.custom-name} as name.";
    # Foo.new(custom-name => "John")
    # This is class Foo with John as name.
    # Bar.new(custom-name => "Jane")
    # This is class Bar with Jane as name.

    $b.custom-name = 'Janezilla'; 
    put "This is class Bar with {$b.custom-name} as name.";
    # This is class Bar with Janezilla as name.
}

say "===";
{ # revised
    my class Foo {
        has $.custom-name  is rw = 'John';
    }

    my $f = Foo.new;
    say $f; 
    put "This is class Foo with {$f.custom-name} as name.";

    my class Bar is Foo {
       has $.custom-name  is rw =  'Jane';
    }

    my $b = Bar.new;
    #    $b.custom-name = 'Jane';  ## BUT shouldn't need to do this
    say $b;
    put "This is class Bar with {$b.custom-name} as name.";
    # Foo.new(custom-name => "John")
    # This is class Foo with John as name.
    # Bar.new(custom-name => "Jane")
    # This is class Bar with Jane as name.

    $b.custom-name = 'Janezilla'; 
    put "This is class Bar with {$b.custom-name} as name.";
    # This is class Bar with Janezilla as name.
}

say "===";
# some bg code
{
    my class Foo { has $.name; }
    my class Bar is Foo {
        method zzz () {
            # return self.name;
            # return $.name;
            # return $!name;
        }
    }
    my $b = Bar.new( name => "zzz" );
    say $b;
    say $b.zzz;
}
