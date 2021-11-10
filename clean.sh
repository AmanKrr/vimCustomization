# .sh file for customizing vim [zsh mac] 
# Run this file while you are in root [root symbol in unix ~ or your username].

redS="\e[1;31m"
redE="\e[0m"

# Checking OS TYPE. 
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Installing vim in linux.
    echo
    echo -e "${redS}Removing VIM ${redE}"
    echo
    sudo apt-get remove vim
    echo
    echo -e "${redS}Removing CMake, vim-nox, python3, mono-complete, go-lang, nodejs, default-jdk, npm ${redE}"
    echo
    sudo apt-get remove build-essential
    sudo apt autoremove
    echo
    sudo apt-get remove cmake
    sudo apt autoremove
    echo
    sudo apt-get remove vim-nox
    sudo apt autoremove
    echo
    sudo apt-get remove python3-dev
    sudo apt autoremove
    echo
    sudo apt-get remove mono-complete 
    sudo apt autoremove 
    echo
    sudo apt-get remove default-jdk
    sudo apt autoremove
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

# Checking directory exits or not.
FILE=~/.vim
if [ -d "$FILE" ]; then
    echo -e "${redS}Vim folder already exists, Removing...... ${redE}"
    rm -rf ~/.vim
    echo
else
    echo -e "${redS}Vim folder already removed. ${redE}"
    echo
fi

# Removing .vimrc and updating it.
echo -e "${redS}Removing .vimrc .viminfo ${redE}"
cd ~
rm -rf .vimrc
rm -rf .viminfo
echo

FILES=~/tmp
if [ -d "$FILES" ]; then
    echo -e "${redS}tmp folder already exists, Removing....... [created for swap files]${redE}"
    echo
else
    echo -e "${redS}tmp folder already removed. $HOME/ ${redE}"
    echo "Done"
    echo
fi

vim --version
echo "SUCCESS"
echo
