'abcdefg' ~~ /(a)((b).(.))/;
say $/;

# ｢abcd｣
#  0 => ｢a｣
#  1 => ｢bcd｣
#   0 => ｢b｣
#   1 => ｢d｣


say $/.^name;       # Match
say $/.from;        # 0
say $/.to;          # 4
say $/.Str;         # abcd
say $/.list.elems;  # 2
say $0;             # ｢a｣
