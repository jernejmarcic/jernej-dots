# # Just printing the help statement and stuff like that
# function display_help
#     echo "Usage: uni [option]"
#     echo ""
#     echo "Options:"
#     echo "  scc         - Enters Software Engineering directory"
#     echo "  scc111      - Enter SCC.111: Software Development directory"
#     echo "  scc122      - Enter SCC.121: Fundamentals of Computer Science directory"
#     echo "  scc132      - Enter SCC.131: Digital Systems directory"
#     echo "  scc141      - Enter SCC.141: Professionalism in Practice directory"
#     echo "  labs        - Enter the appropriate Labs Week directory"
#     echo "                If no second argument is given, it determines the week based on the current date."
#     echo "                If a number is provided as the second argument, it will go to that specific week's lab."
#     echo "  ir          - Enter the International Relations directory"
#     echo "  -h --help   - Show this help message"
# end
# function get_labs_week_2025
#     set week (math (date +%W))
#     switch $week
#         case 9
#             echo 18
#         case 10
#             echo 19
#         case 11
#             echo 20
#         case 12
#             echo 21
#         case 17
#             echo 22
#         case 18
#             echo 23
#         case 19
#             echo 24
#         case 20
#             echo 25
#         case 21
#             echo 26
#         case 22
#             echo 27
#         case 23
#             echo 28
#         case 24
#             echo 29
#         case 25
#             echo 30
#     end
# end
# function directory_walker
# end
# function main
#     set labs (get_labs_week_2025)
#
#     switch $argv[1]
#         case scc
#             echo "Entering Software Engineering directory"
#             cd "$HOME/Documents/Lancaster/Software Engineering/"
#         case scc111
#             echo "Entering SCC.111 Software Development directory"
#             cd "$HOME/Documents/Lancaster/Software Engineering/SCC.111: Software Development/"
#         case scc121
#             echo "Entering SCC.121: Fundamentals of Computer Science directory"
#             cd "$HOME/Documents/Lancaster/Software Engineering/SCC.121: Fundamentals of Computer Science/"
#         case scc131
#             echo "Entering SCC.131: Digital Systems directory"
#             cd "$HOME/Documents/Lancaster/Software Engineering/SCC.131: Digital Systems/"
#         case scc141
#             echo "Entering SCC.141: Professionalism in Practice directory"
#             cd "$HOME/Documents/Lancaster/Software Engineering/SCC.141: Professionalism in Practice/"
#         case labs
#             echo "Etnering Labs week $labs"
#     end
#
# end
# main
function uni
    function display_help
        echo "Usage: uni [option]"
        echo ""
        echo "Options:"
        echo "  edit        - Opens coresponding text/code file in defualt editor"
        echo "  scc         - Enters Software Engineering directory"
        echo "  scc111      - Enter SCC.111: Software Development directory"
        echo "  scc121      - Enter SCC.121: Fundamentals of Computer Science directory"
        echo "  scc132      - Enter SCC.131: Digital Systems directory"
        echo "  scc141      - Enter SCC.141: Professionalism in Practice directory"
        echo "  labs        - Enter the appropriate Labs Week directory"
        echo "  ir          - Enter the International Relations directory"
        echo "  -h --help   - Show this help message"
    end

    function enter_directory
        set path $argv[1]
        echo "Entering $path"
        cd "$path"
    end

    function get_scc_directory
        switch $argv[1]
            case scc
                echo "$HOME/Documents/Lancaster/Software Engineering/"
            case scc111
                echo "$HOME/Documents/Lancaster/Software Engineering/SCC.111: Software Development/"
            case scc121
                echo "$HOME/Documents/Lancaster/Software Engineering/SCC.121: Fundamentals of Computer Science/"
            case scc131
                echo "$HOME/Documents/Lancaster/Software Engineering/SCC.131: Digital Systems/"
            case scc141
                echo "$HOME/Documents/Lancaster/Software Engineering/SCC.141: Professionalism in Practice/"
            case '*'
                echo "Invalid option. Use -h or --help for usage instructions."
                return 1
        end
    end

    function get_labs_week
        set year (date +%Y)
        set week (math (date +%-W))

        if test $year -eq 2025
            switch $week
                case 9
                    echo 18
                case 10
                    echo 19
                case 11
                    echo 20
                case 12
                    echo 21
                case 17
                    echo 22
                case 18
                    echo 23
                case 19
                    echo 24
                case 20
                    echo 25
                case 21
                    echo 26
                case 22
                    echo 27
                case 23
                    echo 28
                case 24
                    echo 29
                case 25
                    echo 30
                case '*'
                    echo "Invalid week."
                    return 1
            end
        else
            echo "Invalid year."
            return 1
        end
    end

    function enter_labs
        if test -z "$argv[1]"
            set labs (get_labs_week)
        else
            set labs (math $argv[1])
        end

        set lab_path "$HOME/Documents/Lancaster/Software Engineering/Labs/Labs Week $labs"

        if test -d "$lab_path"
            echo "Directory exists"
            echo "Going to week $labs"
            cd "$lab_path"
        else
            echo "Directory does not exist"
            echo "Creating..."
            mkdir -p "$lab_path"
            cd "$lab_path"
        end
    end
    function get_filetypes
        for i in $(ls | sed -n 's/.*\.\([^.]*\)$/\1/p' | sort -u)
            if test $i = java
                echo java
            else if test $i = c
                echo c
            else if test $i = cpp
                echo cpp
            else if test $i = c++
                echo c++
            end
        end
    end
    function editor
        set editor nvim

    end
    function edit
        switch $argv[1]
            case scc
                echo "Edit what?"
                return 1
            case scc111
                set dir_path (get_scc_directory $argv[1])
                enter_directory $dir_path
                nvim 'SCC.111 Software Development.md'
            case scc121
                set dir_path (get_scc_directory $argv[1])
                enter_directory $dir_path
                nvim 'SC 121 Fundamentals Of Computer Science.md'
            case scc131
                set dir_path (get_scc_directory $argv[1])
                enter_directory $dir_path
                nvim 'SCC.131 Digital Systems.md'
            case scc141
                set dir_path (get_scc_directory $argv[1])
                enter_directory $dir_path
                nvim 'SCC.141 Professionalism in Practice.md'
            case labs
                enter_labs $argv[2]
                nvim *.(get_filetypes)
            case ir
        end
    end

    function main
        if test (count $argv) -eq 0; or test "$argv[1]" = -h; or test "$argv[1]" = --help
            display_help
            return
        end

        switch $argv[1]
            case edit
                edit $argv[2] $argv[3]
            case scc scc111 scc121 scc131 scc141
                set dir_path (get_scc_directory $argv[1])
                enter_directory $dir_path
            case labs
                enter_labs $argv[2]
            case ir
                echo "Entering International Relations"
                cd "$HOME/Documents/Lancaster/International Relations/"
            case '*'
                echo "Invalid option. Use -h or --help for usage instructions."
        end
    end

    main $argv
end
