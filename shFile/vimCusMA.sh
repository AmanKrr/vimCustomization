# .sh file for customizing vim [zsh mac] 
# Run this file while you are in root [root symbol in unix ~ or your username].

redS="\e[1;31m"
redE="\e[0m"

# Checking OS TYPE. 
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Installing vim in linux.
    printf "\n"
    printf "${redS}Installing VIM ${redE}"
    printf "\n"
    sudo apt-get install vim
    printf "\n"
    printf "${redS}Installing CMake, vim-nox, python3, mono-complete, go-lang, nodejs, default-jdk, npm ${redE}"
    printf "\n"
    sudo apt install build-essential cmake vim-nox python3-dev
    sudo apt install mono-complete default-jdk
    printf "\n"
else [[ "$OSTYPE" == "darwin"* ]]
    # Checking Homebrew is installed or not. If installed then update else install.
    if [[ $(command -v brew) == "" ]]; then
        printf "${redS}Installing Homebrew ${redE}"
        printf "\n"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
        printf "\n"
        # Installing Vim. Pre-installed macOS system Vim does not support Python 3. So you need to install either a Vim that supports Python 3.
        printf "${redS}Installing VIM ${redE}"
        printf "\n"
        brew install vim cmake 
        printf "\n"
    else
        printf "${redS}Updating Homebrew ${redE}"
        printf "\n"
        brew update
        printf "\n"
        # Installing Vim. Pre-installed macOS system Vim does not support Python 3. So you need to install either a Vim that supports Python 3.
        printf "${redS}Installing VIM ${redE}"
        printf "\n"
        brew install vim cmake   
        printf "\n"
    fi
fi

# Cloning vimCustomization folder. Then moving vimrc file in root and renaming to hide it.
git clone https://github.com/AmanKrr/vimCustomization
cd vimCustomization
mv vimrc ~/
cd ~ 
mv vimrc .vimrc
printf "\n"

# Checking directory exits or not.
FILE=~/.vim
if [ -d "$FILE" ]; then
    printf "${redS}Vim folder already exists. ${redE}"
    printf "\n"
else
    printf "${redS}Vim folder not exits. Creating vim folder in $HOME/ ${redE}"
    mkdir ~/.vim
    printf "Done"
    printf "\n"
fi

# Set up vbundle, then executing command in vim to intall plugins.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c 'PluginInstall' -c 'q' -c 'q'

# Compile YCM
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --all 

# Removing .vimrc and updating it.
printf "\n"
printf "${redS}Updating .vimrc ${redE}"
cd ~
rm -rf .vimrc
cd vimCustomization/updated
mv vimrc ~/
cd ~
mv vimrc .vimrc
printf "\n"

# Moving color folder into vim folder
cd vimCustomization
mv colors ~/.vim/
cd ~

# Cleaning
printf "${redS}Cleaning. After finishing vim will launch. ${redE}"
rm -rf vimCustomization

FILES=~/tmp
if [ -d "$FILES" ]; then
    printf "${redS}tmp folder already exists. ${redE}"
    printf "\n"
else
    printf "${redS}Vim folder not exits. Creating vim folder in $HOME/ ${redE}"
    mkdir ~/tmp
    printf "Done"
    printf "\n"
fi

rm -rf vimCusMA.sh
vim
printf "\n"
