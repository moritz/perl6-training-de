class A {
    has $.x;
}

class A {
    has $!x;
    method x() { $xx };
}


class B {
    has $.x is rw;
}
class B {
    has $!x;
    method x() is rw { $!x }
}
