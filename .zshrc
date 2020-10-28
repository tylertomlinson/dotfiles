## rbenv  - ruby ##

eval "$(hub alias -s)"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# ----------------------------------------------------------------- #

source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions
EOBUNDLES

antigen apply

# manual Avit theme
source /Users/tyler/.prompt.zsh

# ----------------------------------------------------------------- #

# ALIASES #
source $HOME/.zshenv

# ----------------------------------------------------------------- #

export EDITOR=/usr/local/bin/atom
