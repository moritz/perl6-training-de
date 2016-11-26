class Encapsulated {
    has $!private;
    submethod BUILD(:$private) {
        $!private = $private;
    }
}

# oder kürzer:
class Encapsulated {
    has $!private;
    submethod BUILD(:$!private) {
    }
}
