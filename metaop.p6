my @numbers = 1, 2, 7;
say 1 + 2 + 7;          # 10
say [+] @numbers;       # 10

say [+]();              # 0
say [*]();              # 1

say [\+] @numbers;      # (1 3 10)


say @numbers Z 1..10;  # ((1 1) (2 2) (7 3))

say @numbers Z+ 1..10;  # (2 4 10)

say @numbers Zxx 1..3;  # ((1) (2 2) (7 7 7))


say <a b> X 1..3;
    # ((a 1) (a 2) (a 3) (b 1) (b 2) (b 3))
say <a b c> X~ 1..3;
    # (a1 a2 a3 b1 b2 b3 c1 c2 c3
