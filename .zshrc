# Other stuff
alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias nvimconfig="vim ~/.config/nvim/init.vim"
alias python="/usr/bin/python3"
alias sauce="source ~/.zshrc"
export NVM_DIR="$HOME/.nvm"
# Plugins and theme
# source ~/.zsh/themes/agnoster-zsh-theme/agnoster.zsh-theme
# source $(brew --prefix)/opt/spaceship/spaceship.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# ZSH options
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt auto_cd

zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true
zstyle ':completion:*:man:*'      menu yes select

# keybindings
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# Vim Mode settings
ZVM_VI_ESCAPE_BINDKEY=jk
ZVM_INSERT_MODE_CURSOR=$ZVM_CURSOR_BLINKING_BLOCK

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
export PATH="/opt/homebrew/opt/go@1.16/bin:$PATH"
