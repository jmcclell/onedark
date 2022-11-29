# onedark prompt

declare -gA ONEDARK

ONEDARK[black]="#0e1013"
ONEDARK[bg0]="#1f2329"
ONEDARK[bg1]="#282c34"
ONEDARK[bg2]="#30363f"
ONEDARK[bg3]="#323641"
ONEDARK[bg4]="#181b20"
ONEDARK[bg]="#21252b"
ONEDARK[bg_blue]="#61afef"
ONEDARK[bg_yellow]="#e8c88c"
ONEDARK[fg]="#abb2bf" # "#a0a8b7"
ONEDARK[purple]="#bf68d9"
ONEDARK[green]="#8ebd6b"
ONEDARK[orange]="#cc9057"
ONEDARK[blue]="#4fa6ed"
ONEDARK[yellow]="#e2b86b"
ONEDARK[cyan]="#48b0bd"
ONEDARK[red]="#e55561"
ONEDARK[grey]="#535965"
ONEDARK[light_grey]="#7a818e"
ONEDARK[dark_cyan]="#266269"
ONEDARK[dark_red]="#8b3434"
ONEDARK[dark_yellow]="#835d1a"
ONEDARK[dark_purple]="#7e3992"



# %K{black} %F{%(!.yellow.default)}jason@%m %S%F{cyan}%K{black}%k ~/d/s/j/jparse %s%S%F{yellow}%K{cyan}%k  master ± %s%k%F{yellow}%f

#TODO:
# [ ] If previous command fails, red X (glyph) to start second line of prompt and the exit code of the previous command
# [ ] move date / time to right hand prompt (perhaps the above, as well?)
# [ ] show full path on top line
# [ ] git section bg green when good, yellow/orange when dirty
# ✘

pcolor="${ZSH_THEME_ONEDARK_PROMPT_COLOR:-"${ONEDARK[blue]}"}"


local section_start="╭─ "
local section_username="%n %K{$pcolor%}%F{$ONEDARK[bg]%}"
local section_path="%F{$ONEDARK[bg]%} %~ %{$reset_color%}%F{$pcolor%}%{$reset_color%} "
local nextline="
╰─o "
local section_end="%K{$ONEDARK[bg]%}%F{$ONEDARK[fg]%}"


PROMPT="${section_start}${section_username}${section_path}${nextline}${section_end}"

#ZSH_THEME_GIT_PROMPT_PREFIX="%K{$ONEDARK[green]%}%F{$ONEDARK[bg]%} "
ZSH_THEME_GIT_PROMPT_PREFIX="["
ZSH_THEME_GIT_PROMPT_SUFFIX="]"
ZSH_THEME_GIT_PROMPT_SEPARATOR="|"
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[blue]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}%{…%G%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[blue]%}%{⚑%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"

