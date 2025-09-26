# onedark prompt

# Update: no longer sets colors but will use whatever colors the terminal
# has configured.

# %K{black} %F{%(!.yellow.default)}jason@%m %S%F{cyan}%K{black}%k ~/d/s/j/jparse %s%S%F{yellow}%K{cyan}%k  master ± %s%k%F{yellow}%f

#TODO:
# [ ] If previous command fails, red X (glyph) to start second line of prompt and the exit code of the previous command
# [ ] move date / time to right hand prompt (perhaps the above, as well?)
# [ ] show full path on top line
# [ ] git section bg green when good, yellow/orange when dirty
# ✘
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX="("
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=") "

local pcolor="${ZSH_THEME_ONEDARK_PROMPT_COLOR:-"blue"}"
local icon="${ZSH_THEME_ONEDARK_PROMPT_ICON:-" "}"
local icon_color="${ZSH_THEME_ONEDARK_PROMPT_ICON_COLOR:-"${pcolor}"}"


local section_start="╭─"
local section_icon="%F{$icon_color%} $icon %{$reset_color%}"
local section_username="%n %K{$pcolor%}%F{0}"
local section_path=" %~ %K{$reset_color%}%F{$pcolor%}%K{$reset_color%} "
local nextline="
╰─o "
local section_end="%K{0}%F{1}"

PROMPT='${section_start}${section_icon}${section_username}${section_path}${nextline}$(virtualenv_prompt_info)${section_end}'

ZSH_THEME_GIT_PROMPT_PREFIX="%K{$pcolor%}%F{0} "
ZSH_THEME_GIT_PROMPT_BRANCH="󰊢 %F{7}%K{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%F{$pcolor%}|%F{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[blue]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[yellow]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}%{…%G%}"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[blue]%}%{⚑%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}%{✔%G%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%K{$pcolor%} %K{$reset_color%}%F{$pcolor%}%F{$reset_color%}"
