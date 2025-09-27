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

shell_context=""
if [[ -n "${DEVBOX_SHELL_ENABLED}" ]]; then
  shell_context="devbox"
fi

pcolor="${ZSH_THEME_ONEDARK_PROMPT_COLOR:-"blue"}"
picon="${ZSH_THEME_ONEDARK_PROMPT_ICON:-" "}"
picon_color="${ZSH_THEME_ONEDARK_PROMPT_ICON_COLOR:-"${pcolor}"}"


local section_start="%F{$pcolor%}╭─"
local section_context=""
if [[ -n "${shell_context}" ]]; then
    section_context="%F{$pcolor%}[${shell_context}]"
fi
local section_icon="%F{$picon_color%} $picon %{$reset_color%}"
local section_username="%n %K{$pcolor%}%F{0}"
local section_path=" %~ %K{$reset_color%}%F{$pcolor%}%K{$reset_color%} "
local nextline="%F{$pcolor%}
╰─o "
local section_end="%K{0}%F{1}"

PROMPT='${section_start}${section_context}${section_icon}${section_username}${section_path}${nextline}$(virtualenv_prompt_info)${section_end}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{$pcolor%}%{󰊢 %G%}%K{$pcolor%}%F{0} "
ZSH_THEME_GIT_PROMPT_BRANCH="%F{0}%K{$pcolor%}"
ZSH_THEME_GIT_PROMPT_SEPARATOR="%K{$pcolor%}%F{0}|"
ZSH_THEME_GIT_PROMPT_STAGED="%B%F{0}%K{$pcolor%}%{●%G%}%b"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%B%F{0}%K{$pcolor%}%{✖%G%}%b"
ZSH_THEME_GIT_PROMPT_CHANGED="%B%F{0}%K{$pcolor%}%{✚%G%}%b"
ZSH_THEME_GIT_PROMPT_BEHIND="%B%F{0}%K{$pcolor%}%{↓%G%}%b"
ZSH_THEME_GIT_PROMPT_AHEAD="%B%F{0}%K{$pcolor%}%{↑%G%}%b"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%B%F{0}%K{$pcolor%}%{…%G%}%b"
ZSH_THEME_GIT_PROMPT_STASHED="%B%F{0}%K{$pcolor%}%{⚑%G%}%b"
ZSH_THEME_GIT_PROMPT_DELETED="%B%F{0}%K{$pcolor%}-%b"
ZSH_THEME_GIT_PROMPT_CLEAN="%B%F{0}%K{$pcolor%}%{✔%G%}%b"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{0}%K{$pcolor%} %K{$reset_color%}%F{$pcolor%}%F{$reset_color%}"
