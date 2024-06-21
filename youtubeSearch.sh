search_query=""

for arg in "$@"; do
    [[ "$arg" == "$0" ]] && continue
    search_query+="+$arg"
done

open "https://www.youtube.com/results?search_query=${search_query:1}"
