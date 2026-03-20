source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
set -g fish_color_command b877db
set -g fish_color_param d4bfff
function fish_greeting
    fastfetch --logo-color-1 "magenta" --logo-color-2 "magenta" --color-keys "magenta"
end

fish_add_path /home/murilo/.spicetify

function sync_dots
    # Vai para o QG dos dotfiles
    cd ~/dotfiles
    
    # Prepara todos os arquivos modificados
    git add .
    
    # Se você digitar uma mensagem, ele usa. Se não, usa uma padrão!
    if test -z "$argv"
        git commit -m "Atualização automática das configs"
    else
        git commit -m "$argv"
    end
    
    # Envia pro GitHub
    git push -u origin main
    
    # Volta para a pasta em que você estava antes de rodar o comando
    cd -
    
    # Mostra a mensagem de vitória
    echo "✅ Backup dos dotfiles enviado para o GitHub com sucesso!"
end
