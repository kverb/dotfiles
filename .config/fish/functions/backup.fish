function backup -d "Rsync home to ~/sammy"

    cd ~
    mkdir -p ~/sammy/backups/verbosky
    rsync -AaXv --exclude={"sammy/*", ".cache/*"} /home/verbosky/ sammy/backups/verbosky

end
