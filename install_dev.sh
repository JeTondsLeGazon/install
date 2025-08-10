# Fedora specific

# Docker
sudo dnf -y install dnf-plugins-core
sudo dnf-3 config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER


# Nvim
dnf install -y neovim python3-neovim
# curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
# sudo rm -rf /opt/nvim
# sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

#TODO: add this line to *rc file
# export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

#TODO: generalize + python updates

# Chezmoi + dotfiles
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply https://github.com/JeTondsLeGazon/dotfiles.git
