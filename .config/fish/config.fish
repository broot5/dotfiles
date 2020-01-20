starship init fish | source

export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:'yarn global bin'"

export MOZ_ENABLE_WAYLAND=1
export EDITOR=nvim

alias ls="exa"
alias sd="shutdown -h now"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/broot/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

