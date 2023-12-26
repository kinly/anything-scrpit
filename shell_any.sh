# check input params
if [ $# -ne 1 ]; then
    cat <<- EOT
    Usage: $0 param_01....
EOT
    exit
fi

# copy params to local variable
_param_01="$1"

# check param equip
if [ $_param_01 -e "1" ]; then
    echo "param_01 is exist"
else
    echo "param_01 is not exist"
fi

# get input Y/N
function get_input_y_n() {
    while true
    do
        read -p "input Y/N: " _input_y_n
        case $_input_y_n in
            [Yy]|[Yy])
                echo "Y"
                break
                ;;
            *)
                echo "N"
                exit 1
        esac
    done
}

# get sub-string using sed
echo $(echo "abc:123:def" | sed "s/.*abc:\(.*\).*/\1/")

# get sub-string using awk
echo $(echo "abc:123:def" | awk -F ':' '{print $1}'

# remove space using sed
echo $(echo " abc:123:def 222" | sed -e "s/^[[:space:]]*//")
