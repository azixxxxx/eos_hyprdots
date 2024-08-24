if status is-interactive
    # Commands to run in interactive sessions can go here
fastfetch
starship init fish | source
function timeshift
    sudo -E timeshift-launcher
end
end
