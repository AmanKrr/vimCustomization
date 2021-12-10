# .sh file for customizing vim [zsh mac] 
# Run this file while you are in root [root symbol in unix ~ or your username].

redS="\e[1;31m"
redE="\e[0m"

# Checking OS TYPE. 
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Installing vim in linux.
    printf "\n"
    printf "${redS}Removing VIM ${redE}"
    printf "\n"
    sudo apt-get remove vim
    printf "\n"
    printf "${redS}Removing CMake, vim-nox, python3, mono-complete, go-lang, nodejs, default-jdk, npm ${redE}"
    printf "\n"
    sudo apt-get remove build-essential
    sudo apt autoremove
    printf "\n"
    sudo apt-get remove cmake
    sudo apt autoremove
    printf "\n"
    sudo apt-get remove vim-nox
    sudo apt autoremove
    printf "\n"
    sudo apt-get remove python3-dev
    sudo apt autoremove
    printf "\n"
    sudo apt-get remove mono-complete 
    sudo apt autoremove 
    printf "\n"
    sudo apt-get remove default-jdk
    sudo apt autoremove
    printf "\n"
else [[ "$OSTYPE" == "darwin"* ]]
    # Removing packages installed using Homebrew
    printf "${redS} Removing Vim. ${redE}"
    brew remove vim
    printf "\n"
    printf "${redS} Removing CMake. ${redE}"
    brew remove cmake
    printf "\n"
    printf "${redS} Removing dependencies. ${redE}"
    brew autoremove
    printf "\n"
fi

# Checking directory exits or not.
FILE=~/.vim
if [ -d "$FILE" ]; then
    printf "${redS}Vim folder already exists, Removing...... ${redE}"
    rm -rf ~/.vim
    printf "\n"
else
    printf "${redS}Vim folder already removed. ${redE}"
    printf "\n"
fi

# Removing .vimrc and updating it.
printf "${redS}Removing .vimrc .viminfo ${redE}"
cd ~
rm -rf .vimrc
rm -rf .viminfo
printf "\n"

FILES=~/tmp
if [ -d "$FILES" ]; then
    printf "${redS}tmp folder already exists, Removing....... [created for swap files]${redE}"
    rm -rf ~/tmp
    printf "\n"
else
    printf "${redS}tmp folder already removed. $HOME/ ${redE}"
    printf "Done"
    printf "\n"
fi

vim --version

if [[ $(command -v vim) == "" ]]; then
    printf "SUCCESS"
else
    printf "Failed Cleaning"
fi

printf "SUCCESS"
printf '${redS} For macOS, Homebrew is not removed. If you wish to remove it run this in your terminal =>. ${redE} /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" '
printf "\n"
