if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

export MOZ_ENABLE_WAYLAND=1
export EDITOR=nvim

alias ls="lsd"
alias sd="shutdown now"
fish_add_path /home/broot/.spicetify
