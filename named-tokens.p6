my token ini { <&section>* }

my token section {
    <&header>
    <&pair>*
}
my token header {
    '[' .+? ']' \n+
}
my token pair {
    (\w+) \s* '=' \s* (\N+) \n+
}

say "[perl6]\n" ~~ /<&header>/;
say "feel=awesome\n" ~~ /<&pair>/;

say slurp('foo.ini') ~~ /<ini>/;
