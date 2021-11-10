# .sh file for customizing vim [zsh mac] 
# Run this file while you are in root [root symbol in unix ~ or your username].

redS="\e[1;31m"
redE="\e[0m"

# Checking OS TYPE. 
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Installing vim in linux.
    echo
    echo -e "${redS}Installing VIM ${redE}"
    echo
    sudo apt-get install vim
    echo
    echo -e "${redS}Installing CMake, vim-nox, python3, mono-complete, go-lang, nodejs, default-jdk, npm ${redE}"
    echo
    sudo apt install build-essential cmake vim-nox python3-dev
    sudo apt install mono-complete default-jdk
    echo
else [[ "$OSTYPE" == "darwin"* ]]
    # Checking Homebrew is installed or not. If installed then update else install.
    if [[ $(command -v brew) == "" ]]; then
        echo -e "${redS}Installing Homebrew ${redE}"
        echo
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        echo
        # Installing Vim. Pre-installed macOS system Vim does not support Python 3. So you need to install either a Vim that supports Python 3.
        echo -e "${redS}Installing VIM ${redE}"
        echo
        brew install vim cmake 
        echo
    else
        echo -e "${redS}Updating Homebrew ${redE}"
        echo
        brew update
        echo
        # Installing Vim. Pre-installed macOS system Vim does not support Python 3. So you need to install either a Vim that supports Python 3.
        echo -e "${redS}Installing VIM ${redE}"
        echo
        brew install vim cmake   
        echo
    fi
fi

# Cloning vimCustomization folder. Then moving vimrc file in root and renaming to hide it.
git clone https://github.com/AmanKrr/vimCustomization
cd vimCustomization
mv vimrc ~/
cd ~ 
mv vimrc .vimrc
echo

# Checking directory exits or not.
FILE=~/.vim
if [ -d "$FILE" ]; then
    echo -e "${redS}Vim folder already exists. ${redE}"
    echo
else
    echo -e "${redS}Vim folder not exits. Creating vim folder in $HOME/ ${redE}"
    mkdir ~/.vim
    echo "Done"
    echo
fi

# Set up vbundle, then executing command in vim to intall plugins.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'q' -c 'q'

# Compile YCM
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all 

# Removing .vimrc and updating it.
echo
echo -e "${redS}Updating .vimrc ${redE}"
cd ~
rm -rf .vimrc
cd vimCustomization/updated
mv vimrc ~/
cd ~
mv vimrc .vimrc
echo

# Moving color folder into vim folder
cd vimCustomization
mv colors ~/.vim/
cd ~

# Cleaning
echo -e "${redS}Cleaning. After finishing vim will launch. ${redE}"
rm -rf vimCustomization

FILES=~/tmp
if [ -d "$FILES" ]; then
    echo -e "${redS}tmp folder already exists. ${redE}"
    echo
else
    echo -e "${redS}Vim folder not exits. Creating vim folder in $HOME/ ${redE}"
    mkdir ~/tmp
    echo "Done"
    echo
fi

vim
echo

