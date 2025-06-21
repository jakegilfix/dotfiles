if status is-interactive
    # Commands to run in interactive sessions can go here
end

#pyenv init - | source

set -U fish_greeting

#set -g theme_color_scheme dracula
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path /usr/local/opt/gnu-getopt/bin
fish_add_path /usr/local/opt/mysql@5.7/bin
fish_add_path /Users/jake.gilfix/.pyenv
fish_config theme choose 'Catppuccin Mocha'
fish_add_path $HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin

starship init fish | source
zoxide init fish | source

# Abbreviations
abbr -a -- gco 'git checkout'
abbr -a -- gs 'git status'
abbr -a -- gfa 'git fetch --all'
abbr -a -- gri 'git rebase -i'
abbr -a -- ga 'git add'
abbr -a -- gc 'git commit -m'
fish_add_path /usr/local/opt/icu4c/bin:/usr/local/opt/icu4c/sbin
set -gx PYICU_INCLUDES /usr/local/Cellar/icu4c/73.2/include
set -gx PYICU_LFLAGS -L/usr/local/Cellar/icu4c/73.2/lib
set -gx PYICU_CFLAGS -std=c++11:-DPYICU_VER=\"2.4.2\"
set -gx PKG_CONFIG_PATH /usr/local/opt/icu4c/lib/pkgconfig
set -gx CC /usr/bin/gcc
set -gx CXX /usr/bin/g++
