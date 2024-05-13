cpath="${0:A:h}/completions"
fpath+="$cpath"
[[ -d "$cpath" ]] || mkdir -p "$cpath"
[[ $commands[pdm] ]] && pdm completion zsh > "$cpath/_pdm"
unset cpath
