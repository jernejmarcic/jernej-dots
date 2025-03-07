# File: ~/.config/fish/completions/arduinizer.sh.fish

# Step 1: Complete Board FQBN with Name as Description
complete -c arduinizer.sh -n '__fish_seen_subcommand_from board' -a "(arduino-cli board listall | awk -F '\t' '{print $2}') " -d "(arduino-cli board listall | awk -F '\t' '{print $1}')" -x

# Step 2: Complete Sketch Path (after selecting board)
complete -c arduinizer.sh -n '__fish_seen_subcommand_from board' -a "(find (pwd) -type f -name '*.ino')" -d "Path to Arduino Sketch (.ino)"

# Step 3: Complete Port (after selecting sketch)
complete -c arduinizer.sh -n '__fish_seen_subcommand_from sketch' -a "(arduino-cli board list --json | jq -r '.[].port')" -d "Port (e.g., /dev/ttyUSB0)"

# Step 4: Complete Baud Rate (after port selection)
complete -c arduinizer.sh -n '__fish_seen_subcommand_from port' -a "9600 115200 57600 38400 19200 14400 9600" -d "Common Baud Rates"
