function fish_user_key_bindings
    fish_vi_key_bindings
    bind -M insert \cc kill-whole-line force-repaint
    set fish_bind_mode insert

    # easier escape to normal mode
    bind -M insert -m default kj 'commandline -f repaint'
    bind -M visual -m default kj 'commandline -f repaint'
    bind -M insert -m default \cs 'commandline -f repaint'

    # same binding for toggling insert mode
    bind -M default -m insert \cs 'commandline -f repaint'
    bind -M insert \cf accept-autosuggestion
    bind -k btab complete-and-search
    bind -M insert \cr history-search-backward

    # restore ctrl-a ctrl-k home/end behavior
    bind -M insert \ca beginning-of-line
    bind -M insert \ce end-of-line
end
