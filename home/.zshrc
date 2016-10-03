# Path to your oh-my-zsh installation.
export ZSH=/Users/LuiMac/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="norm"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git brew osx npm tmux vagrant)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/LuiMac/.rvm/bin:/usr/local/Cellar"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source /Users/LuiMac/.gulp-autocompletion-zsh/gulp-autocompletion.zsh
source "$HOME/.homesick/repos/homeshick/homeshick.sh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias pak='livestreamer http://www.twitch.tv/pakratt0013'
alias geek='livestreamer https://www.twitch.tv/geekandsundry'
# alias composer="php /usr/local/bin/composer.phar"

# Init fasd plugin
eval "$(fasd --init auto)"

# tmux options
ZSH_TMUX_AUTOSTART="true"
ZSH_TMUX_AUTOSTART_ONCE="false"

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

export PATH="/usr/local/sbin:$PATH:$HOME/.composer/vendor/bin:$PATH"
