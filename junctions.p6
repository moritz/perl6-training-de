my @input = 1, 4, 3;

if any(@input) == 3 {
    say "Da ist eine drei drin";
}

if 0 <= all(@input) < 10 {
    say 'Alles gut.';
}

if sqrt(none(@input)) == 2  {
    say "Keine 4 dabei";
}
