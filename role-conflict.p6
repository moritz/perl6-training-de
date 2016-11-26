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
}

# Method 'go-to-bar' must be resolved by class DrunkenGymnast
# because it exists in multiple roles (Gymnast, Drinker)
