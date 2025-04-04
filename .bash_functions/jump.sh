MARKPATH="$HOME/.marks"

if [ ! -d $MARKPATH ]; then
    mkdir $MARKPATH
fi

function jump() { 
    cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}
function mark() { 
    mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}
function unmark() { 
    rm -i "$MARKPATH/$1"
}
function marks() {
    ls -l "$MARKPATH" | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/\t-/g' && echo
}

