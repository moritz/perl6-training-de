multi sub log($number) { ... }
multi sub log($number, $base) { ... };

log(42);        # log($number)
log(42, 2);     # log($number, $base)


multi sub identify(Int $number) {
    say "Int $number";
}
multi sub identify(Str $str) {
    say "Str $str";
}
multi sub identify(@array) {
    say "Array @array[]";
}
identify 1;             # Int 1
identify 'Perl';        # Str Perl
identify [1, 'x'];      # Array 1 x


multi sub go($destination, :$car!) { ... }
multi sub go($destination, :$walk!) { ... }
multi sub go($destination, :$train!) { ... }

go 'home', :train;


# Übung: Schreibe to-json als multi

# Wie funktionieren Multis? Topologische Sortierung

# multi = proto + candidates

proto sub log(|) {*}
multi sub log($number) { ... }
multi sub log($number, $base) { ... }


proto sub get($protocol, $url, *%) {
    say "Getting $url via $protocol";
    my $result = try {
        {*};
    }
    if $! {
        say "Got error '$!' for $url"
    }
    return $result;
}
multi sub get('http', $url) { say "http $url" }
multi sub get('ftp',  $url) { say "ftp $url" }

get('http', "http://perl6.org/");



proto sub a(|) {*}
multi sub a(Any) { say 'Any' };
{
    multi sub a(Int) { say 'Int' };
    a 1;        # Int
    a 'x';      # Any
}
a 1;            # Any


proto sub b(|) {*}
multi sub b(Any) { say 'Any' };
{
    only sub b(Int) { say 'Int' };
    b 'x';      # Calling b(Str) will never work with declared signature (Int
}



