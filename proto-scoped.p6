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
