role LL[::T] {
    has T $.item;
    has LL[T] $.node;
    method visit(&c) {
        c($.item);
        dd $.node;
        $!node.visit(&c)  if $.node;
    }
}

my $t = LL[Int].new(
    item => 5,
    node => LL[Int].new( item => 4 ),
);
say $t.perl;
$t.visit(&say);

sub visit($node, &c) {
    c($node.item);
    visit($node.node, &c) if $node.node;
}
visit($t, &say);
