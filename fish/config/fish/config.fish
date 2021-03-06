bind \e\cp history-token-search-backward
bind \e\cn history-token-search-forward

source ~/.config/fish/index.fish

# Path to your oh-my-fish.
set -x fish_path $HOME/.oh-my-fish

# Theme
#set fish_theme robbyrussell
set -x fish_theme pure

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set -x fish_plugins rails git rbenv

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set -x RUBYLIB $HOME/repos/hnotes/lib $RUBYLIB

eval (direnv hook fish)

direnv allow $HOME/repos/hnotes
