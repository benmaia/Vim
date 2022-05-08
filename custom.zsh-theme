PROMPT='%{$fg_bold[yellow]%}➜ %{$fg_bold[green]%} %{$fg[cyan]%}%c %{$fg_bold[white]%}$(git_prompt_info)%{$fg_bold[white]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%})%{$fg[red]%}♦%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%})"
