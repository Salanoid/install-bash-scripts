sudo apt remove --auto-remove neovim
sudo apt purge --auto-remove neovim
sudo rm -rf ~/.config/nvim
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl do xygen
sudo apt-get install fd-find
sudo apt-get install ripgrep
sleep 20
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim
sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
cd ..
sudo rm -rf neovim
cd .
