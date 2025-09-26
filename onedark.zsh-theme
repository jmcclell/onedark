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

ZSH_THEME_GIT_PROMPT_PREFIX="%K{$pcolor%}%F{0}"
ZSH_THEME_GIT_PROMPT_BRANCH="󰊢 hello"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%K{$pcolor%}%F{0}|"
ZSH_THEME_GIT_PROMPT_STAGED="●"
ZSH_THEME_GIT_PROMPT_CONFLICTS="✖"
ZSH_THEME_GIT_PROMPT_CHANGED="✚"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_UNTRACKED="…"
ZSH_THEME_GIT_PROMPT_STASHED="⚑"
ZSH_THEME_GIT_PROMPT_CLEAN="✔"
ZSH_THEME_GIT_PROMPT_SUFFIX="%K{$reset_color%}%F{$pcolor%}%F{$reset_color%}"
