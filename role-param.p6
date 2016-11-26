role BinaryTree[::T] {
    has T $.item;
    has BinaryTree[T] $.left;
    has BinaryTree[T] $.right;
    method visit-preorder(&c) {
        c($!item);
        $!left.visit-preorder(&c)  if $!left;
        $!right.visit-preorder(&c) if $!right;
    }
}

my $t = BinaryTree[Int].new(
    item => 5,
    left => BinaryTree[Int].new( item => 4 ),
    right => BinaryTree[Int].new( item => 8 ),
);
$t.visit-preorder(&say)
