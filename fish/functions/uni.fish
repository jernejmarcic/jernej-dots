function uni
    function display_help
        echo "Usage: uni [option]"
        echo ""
        echo "Options:"
        echo "  scc         - Enters Software Engineering directory"
        echo "  scc111      - Enter SCC.111: Software Development directory"
        echo "  scc122      - Enter SCC.121: Fundamentals of Computer Science directory"
        echo "  scc132      - Enter SCC.131: Digital Systems directory"
        echo "  scc141      - Enter SCC.141: Professionalism in Practice directory"
        echo "  labs        - Enter the appropriate Labs Week directory"
        echo "                If no second argument is given, it determines the week based on the current date."
        echo "                If a number is provided as the second argument, it will go to that specific week's lab."
        echo "  ir          - Enter the International Relations directory"
        echo "  -h --help   - Show this help message"
    end
    if test (count $argv) -eq 0; or test "$argv[1]" = -h; or test "$argv[1]" = --help
        display_help
        return
    end

    # For computer science
    if test $argv[1] = scc
        echo "Entering Software Engineering directory"
        cd "$HOME/Documents/Lancaster/Software Engineering/"
    else if test $argv[1] = scc111
        echo "Entering SCC.111 Software Development directory"
        cd "$HOME/Documents/Lancaster/Software Engineering/SCC.111: Software Development/"
    else if test argv[1] = scc121
        echo "Entering SCC.121: Fundamentals of Computer Science directory"
        cd "$HOME/Documents/Lancaster/Software Engineering/SCC.121: Fundamentals of Computer Science/"
    else if test argv[1] = scc131
        echo "Entering SCC.131: Digital Systems directory"
        cd "$HOME/Documents/Lancaster/Software Engineering/SCC.131: Digital Systems/"
    else if test argv[1] = scc141
        echo "Etnering SCC.141: Professionalism in Practice directory"
        cd "$HOME/Documents/Lancaster/Software Engineering/SCC.141: Professionalism in Practice/"
    end
    if test $argv[1] = labs
        if test -z $argv[2]
            if test (date +%Y) -eq 2025
                if test (date +%-W) -eq 9
                    set labs 18
                else if test (date +%-W) -eq 10
                    set labs 19
                else if test (date +%-W) -eq 11
                    set labs 20
                else if test (date +%-W) -eq 12
                    set labs 21
                else if test (date +%-W) -eq 17
                    set labs 22
                else if test (date +%-W) -eq 18
                    set labs 23
                else if test (date +%-W) -eq 19
                    set labs 24
                else if test (date +%-W) -eq 20
                    set labs 25
                else if test (date +%-W) -eq 21
                    set labs 26
                else if test (date +%-W) -eq 22
                    set labs 27
                else if test (date +%-W) -eq 23
                    set labs 28
                else if test (date +%-W) -eq 24
                    set labs 29
                else if test (date +%-W) -eq 25
                    set labs 30
                end

                if test -d ~/Documents/Lancaster/Software\ Engineering/Labs/Labs\ Week\ $labs
                    echo "Directory exists"
                    echo "Going to week $labs"
                    cd ~/Documents/Lancaster/Software\ Engineering/Labs/Labs\ Week\ $labs
                else
                    echo "Directory does not exist"
                    echo "Creating..."
                    mkcd ~/Documents/Lancaster/Software\ Engineering/Labs/Labs\ Week\ $labs
                end
            end
        else
            cd ~/Documents/Lancaster/Software\ Engineering/Labs/Labs\ Week\ $(math $argv[2])
        end
    end
    # For international relations
    if test $(string lower $argv[1]) = ir
        echo "Entering International Relatons"
        cd "$HOME/Documents/Lancaster/International Relations/"
    end
end
