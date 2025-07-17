# ENV + Prompt tools
starship init fish | source
zoxide init fish | source

# Greeting and PATHs
set fish_greeting
set -gx PATH $PATH ~/.local/bin /usr/local/go/bin

# X settings for non-graphical TTY
if test -z "$DISPLAY"; and test (tty) = "/dev/tty1"
    exec startx
end

# Language and UI
set -x LANG en_IN.UTF-8
set -x CM_LAUNCHER rofi
export MANPAGER="nvim +Man!"

# Functions
function copy
    eval "$argv" | xclip -selection clipboard
end

# Aliases
alias suspendsys="betterlockscreen -l"
alias ls="exa -a --color=always --icons -g --long --no-user --no-time -@"
alias vim="nvim"
alias viconfig="nvim ~/.config/fish/config.fish"
alias rm="rm -rf"
alias npm="pnpm"
alias dpm="npm"
alias !!="eval (history --max=1)"
alias view="bat"
alias cd="z"
alias cdd="cd ~/dev"
alias ..="cd .."
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"
alias gc="git checkout"

# Node (nvm)
set -gx NVM_DIR $HOME/.nvm
nvm use lts > /dev/null

# pnpm
set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

