grammar Ini {
    token TOP {
        <section>*
    }

    token section {
        <header>
        <pair>*
    }
    regex header {
        '[' ( .+? ) ']' \n+
    }
    token pair {
        (\w+) \s* '=' \s* (\N+) \n+
    }
}

class IniSection {
    has $.heading;
    has @.pairs;
}

class IniAction {
    method pair($/) { 
        make ~$0 => ~$1;
    }
    method header($/) {
        make ~$0
    }
    method section($/) {
        make IniSection.new(
           heading => $<header>.made,
           pairs   => $<pair>.map: { .made },
        )
    }
    method TOP($/) {
        my %sections;
        for $<section>.list -> $s {
            %sections{ $s.made.heading } = $s.made;
        }
        make %sections;
    }
}

my $parsed = Ini.parsefile("foo.ini", :actions(IniAction.new));
say $parsed.made.perl;
