# Completion and prompt initialisation
autoload -Uz compinit promptinit
compinit
promptinit

# Lower case matches upper case, but not vice versa
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Source aliases
if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi

# Prompt customisation
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '
setopt PROMPT_SUBST
PROMPT='%F{green}%~%f %F{yellow}${vcs_info_msg_0_}%f$ '

# Keybindings
typeset -g -A key

## Ctrl Left & Right for fast navigation
key[Control-Left]="${terminfo[kLFT5]}"
key[Control-Right]="${terminfo[kRIT5]}"
[[ -n "${key[Control-Left]}"  ]] && bindkey -- "${key[Control-Left]}"  backward-word
[[ -n "${key[Control-Right]}" ]] && bindkey -- "${key[Control-Right]}" forward-word
