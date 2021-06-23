sudo apt-get install vim
git clone https://github.com/AMAN74458/vimCustomization
cd vimCustomization
mv vimrc ~/
cd ..
mv vimrc .vimrc
rm -r vimCustomization

#checking directory
FILE=~/vim 
if [ -d "$FILE" ]; then
    echo "vim folder exists"
else
    echo "Creating vim folder in $HOME/"
    mkdir ~/vim
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'q' -c 'q'

apt install build-essential cmake vim-nox python3-dev
apt install mono-complete golang nodejs default-jdk npm
cd ~/vim/bundle/YouCompleteMe
python3 install.py --all

echo "IF YCM SHOWS ANY ERROR PLEASE VISIT https://github.com/ycm-core/YouCompleteMe AND DO MANUAL INSTALLATION";

