role Drinker {
    method go-to-bar {
        say 'Going to the bar to drink';
    }
}
role Gymnast {
    method go-to-bar {
        say 'Going to the bar to exercise';
    }
}

class DrunkenGymnast does Drinker does Gymnast {
    method go-to-bar {
        say 'staggering to the bar, undecided';
    }
}
DrunkenGymnast.new.go-to-bar;
