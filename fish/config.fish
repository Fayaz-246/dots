if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source
set fish_greeting

set PATH $PATH ~/.local/bin
set PATH $PATH /usr/local/go/bin
set -x CM_LAUNCHER rofi
export MANPAGER="nvim +Man!"
export LANG=en_IN.UTF-8
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/usr/local/share:/usr/share"

function copy
    eval "$argv" | xclip -selection clipboard
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

alias install="sudo nala install"
alias suspendsys="betterlocksceen -l"
alias ls="exa -a --color=always --icons -g --long --no-user --no-time -@"
alias vim="nvim"
alias htop="btop"
alias npm="pnpm"
alias pm="pnpm"
alias !!="eval (history --max=1)"
alias view="bat"
alias codium="~/apps/VSCodium/bin/codium"

# git aliases
alias gaa="git add ."
alias gcm="git commit -m"
alias gp="git push"

set -gx NVM_DIR $HOME/.nvm

nvm use lts > /dev/null


# pnpm
set -gx PNPM_HOME "/home/fayaz/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


set -x LANG en_IN.UTF-8


#if not set -q DBUS_SESSION_BUS_ADDRESS
#set -l dbus_vars (dbus-launch)
    #for var in $dbus_vars
	    # if string match -q 'DBUS_SESSION_BUS_ADDRESS=*' $var
		#set -gx DBUS_SESSION_BUS_ADDRESS (string replace 'DBUS_SESSION_BUS_ADDRESS=' '' -- $var)
	    #else if string match -q 'DBUS_SESSION_BUS_PID=*' $var
		#set -gx DBUS_SESSION_BUS_PID (string replace 'DBUS_SESSION_BUS_PID=' '' -- $var)
	    #end
	#end
    #end


if test -z "$DISPLAY"; and test (tty) = "/dev/tty1"
    exec startx
end
