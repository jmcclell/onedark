fpath+="${0:A:h}/completions"
[[ -d "$cpath" ]] || mkdir -p "$cpath"
[[ $commands[pdm] ]] && pdm completion zsh > "${0:A:h}/completions/_pdm"
