say '0xDEADBEEF' ~~ / '0x' <[ 0..9 A..F ]> + /;
say '0xDEADBEEF' ~~ / '0x' <:digit + [A..F]> + /;
say '0xDEADBEEF' ~~ / '0x' <( <[ 0..9 A..F ]> + /;
