# Vim Customization **[MAC/LINUX]**

## Hey Folks 👋

We all love an awesome UI. So I’ve been wondering how to make my vim colorful. As you all know by default vim has no color for syntax(like in IDEs we see different colors for variable names, contant, function name etc.) you will see only single color in whole file, which is so boring and its a downside. And I personally dont like this. So after digging and reading some articles I was able to do my own customization its not a rocket science. 😁

***Lets get started.***

### **Step 1**

Check vim is installed on your system or not. **NOTE: On Mac vim is installed by default with OS.** In case Vim is not installed by default install it.

copy below code without dollar sign and paste it in your terminal and hit enter.

    For Linux ->
    $ sudo apt install vim
    
Now, I am hoping mac user have brew installed or any other package manager just use that to install Vim.

    For Mac using homebrew ->
    $ brew install vim
    
### **Step 2**

Open **Terminal**.<br>
By default you will be in Home directory if not go to root folder and type ***ls*** command and find **.vim** folder. If you can't see .vim folder, No worries, Create it.

    $ mkdir -p ~/.vim/colors
    
Now this code will create vim folder and inside that vim folder, colors folder will be created. In which we store custom themes or downloaded themes so that vim can access it.

### **Step 3**

You may have theme file or if not https://github.com/rafi/awesome-vim-colorschemes visit this git repo navigate to colors and boom 🤯 bunch of theme collections for vim. Clone this git repo and copy all themes from colors folder and paste it inside vim colors folder.

    For Linux ->
    $ cp {copy source file} {Dest_directory}

    For MAC ->
    $ cp {copy source file} {Dest_directory}
    
### **Step 4**

Download .vimrc file from this ***repo*** paste it inside Home Directory. Now you are ready to rock. You will notice I said ***.vimrc*** but the file name in this repo is vimrc so you have rename it **.vimrc**. Now open any file with vim and see changes. 🚀 🚀

# **Before** 
![Screenshot 2021-06-13 at 11 32 25 PM](https://user-images.githubusercontent.com/54282666/121817858-89e1a700-cca1-11eb-80ed-986a2c802afc.jpeg)

# **After**
![Screenshot 2021-06-13 at 11 32 55 PM](https://user-images.githubusercontent.com/54282666/121817817-4424de80-cca1-11eb-8be8-c1afb3868bf6.jpeg)





