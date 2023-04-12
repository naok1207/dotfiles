#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

export PATH="$HOME/.nodenv/bin:$PATH"
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(nodenv init -)"
eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/azumanaoki/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/azumanaoki/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/azumanaoki/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/azumanaoki/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
  source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi

export PATH="$PATH:$HOME/development/flutter/bin"

export PATH="$PATH":"$HOME/fvm/default/bin"

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CHROME_EXECUTABLE="/Applications/Google Chrome 2.app/Contents/MacOS/Google Chrome"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.17.jdk/Contents/Home

# bun completions
[ -s "$HOME.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(sheldon source)"
eval "$(starship init zsh)"

# https://github.com/rupa/z
# . `brew --prefix`/etc/profile.d/z.sh
. /usr/local/etc/profile.d/z.sh

# yarn
# export PATH="$PATH:`yarn global bin`"

# gcloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
