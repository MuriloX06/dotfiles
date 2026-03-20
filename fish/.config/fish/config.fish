source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
set -g fish_color_command b877db
set -g fish_color_param d4bfff
function fish_greeting
    fastfetch --logo-color-1 "magenta" --logo-color-2 "magenta" --color-keys "magenta"
end

fish_add_path /home/murilo/.spicetify
