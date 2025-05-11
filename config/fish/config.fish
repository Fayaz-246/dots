if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set fish_greeting

set PATH $PATH ~/.local/bin

alias suspendsys="betterlocksceen -l"
alias ls="exa -a --color=always --icons=always -g --long --no-user --no-time -@"
alias vim="nvim"
