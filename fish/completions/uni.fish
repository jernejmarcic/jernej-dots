# Completion script for 'uni'
# Define 'uni' command itself
complete -c uni -d "Navigate to university directories"

# Prevent Fish from suggesting file paths when autocompleting 'uni'
complete -c uni -f

# Main options
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a scc -d "Software engineering (parent)"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a scc111 -d "SCC.111: Software Development"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a scc121 -d "SCC.121: Fundamentals of Computer Science"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a scc131 -d "SCC.131: Digital Systems"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a scc141 -d "SCC.141: Professionalism in Practice"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a labs -d "Go to Labs directory"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a ir -d "International Relations"
complete -c uni -n "not __fish_seen_subcommand_from scc scc111 scc121 scc131 scc141 labs ir help" -a help -d "Show help message"

# Labs week numbers (only when 'labs' is the first argument)
complete -c uni -n "__fish_seen_subcommand_from labs" -a "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30" -d "Specify lab week number"
