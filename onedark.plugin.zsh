
fpath+="${0:A:h}/completions"

() {
    local cpath = "${0:A:h}/completions"

    [[ -d "$cpath" ]] || mkdir -p "$cpath"

    fpath+="$cpath"

    [[ $commands[pdm] ]] && pdm completion zsh > "$cpath/_pdm"
}

