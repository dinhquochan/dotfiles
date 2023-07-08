local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
local user_host="%B%{$fg[cyan]%}%m:%{$reset_color%} "
local user_symbol='%(!.#.$)'
local current_dir="%B%{$fg[yellow]%}%~%{$reset_color%}"
local vcs_branch='$(git_prompt_info)$(hg_prompt_info)'

PROMPT="${user_host}${current_dir}  ${vcs_branch}%b
${user_symbol} "
RPROMPT="%B${return_code}%b"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}+[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="]%{$fg[yellow]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN="]"
