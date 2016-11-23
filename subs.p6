sub distance(Int $x1, Int $y1, Int $x2, Int $y2) {
    return sqrt ($x2-$x1)**2 + ($y2-$y1)**2;
}
say distance 2, 0, 6, 3;    # 5


# Defaults:
sub logarithm($x, $base = e) {
    $x.log / $base.log
}
say logarithm 8, 2;         # 3
say logarithm 5;            # 1.6094379124341

# Optionale Argumente:
sub check-password(Str $password, Str $username?) {
    if $username.defined 
            && $password.index($username).defined {
        die "You cannot use your username in your password";
    }
    ...
}

# Variable Anzahl von Argumenten:
sub myjoin($sep, *@elems) {
    my $result = @elems.shift;
    for @elems -> $e {
        $result ~= $sep ~ $e;
    }
    return $result;
}
say myjoin ',', 'a', 'b', 'c';      # a,b,c


# Argument sind Read-Only:
sub nowrite($x) {
    $x = 42;    # Cannot assign to a readonly
                # variable or a value
}

# Schreibbar machen:
sub swap($x is rw, $y is rw) {
    ($x, $y) = ($y, $x);
}
my ($a, $b) = 1..2;
swap $a, $b;
say $a, " ", $b;    # 2 1


# Benannte Argument
# (Optional per Default, mit ! nicht mehr optional)
sub draw-circle(:$cx = 0, :$cy = 0, :$radius! ) {
    say qq[<circle cx="$cy" cy="$cy" r="$radius"/> ];
}
draw-circle  radius => 10, cy => 5;
draw-circle :radius(42);

my $radius = 42;
draw-circle :$radius;   # wie radius => $radius


subset Positive of Real where { $_ > 0 };
sub newton-sqrt(Positive $x) { ... }
# oder
sub newton-sqrt(Real $x where $x > 0) { ... }



