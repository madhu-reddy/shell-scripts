function choose {

    local default="n"
    local choice_yes="pwd"
    local choice_no="echo 'No worries! I am not showing you the present working directory'"
    local answer

    read -p "Do you want me to show present working directory: " answer
    [ -z "$answer" ] && answer="$default"

    case "$answer" in
        [yY1] ) eval "$choice_yes"
            # error check
            ;;
        [nN0] ) eval "$choice_no"
            # error check
            ;;
        *     ) printf "%b" "Unexpected answer '$answer'!\n" >&2 ;;
    esac
} # end of function choose

choose
