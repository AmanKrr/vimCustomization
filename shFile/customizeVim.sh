sudo apt-get install vim
git clone https://github.com/AMAN74458/vimCustomization
cd vimCustomization
mv vimrc ~/
cd ~
mv vimrc .vimrc

#checking directory
FILE=~/.vim 
if [ -d "$FILE" ]; then
    echo "vim folder exists"
else
    echo "Creating vim folder in $HOME/"
    mkdir ~/.vim
fi

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'q' -c 'q'

sudo apt install build-essential cmake vim-nox python3-dev
sudo apt install mono-complete default-jdk
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all
echo "Final Touch"
cd ~
rm -rf .vimrc
cd vimCustomization
mv mainVimrc ~/
cd ~
mv mainVimrc .vimrc
cd vimCustomization
mv colors ~/.vim/
cd ~
rm -rf vimCustomization
echo "IF YCM SHOWS ANY ERROR PLEASE VISIT https://github.com/ycm-core/YouCompleteMe AND DO MANUAL INSTALLATION";
vim
