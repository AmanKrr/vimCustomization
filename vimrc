"vim customization                                                                                                                                       

"NOTE: Never edit system vimrc its better to edit user vimrc...... This is user vimrc
"These commands will auto load when vim is loaded 
"If you don't want to use default setting just delete this file....Now you are good to go.

"color customization ------------------------------------------------------------->
"syntax on for editor to show syntax color
syntax on

"set background of vim to dark
set background=dark

"Now apply favourite theme of your using colorscheme {theme name}...... my theme is  gruvbox
colorscheme gruvbox

"Spaces & Tabs ------------------------------------------------------------->
"number of visuals per Tab
set tabstop=4

"number of spaces in Tab when editing 
set softtabstop=4

"turns into spaces
set expandtab

"UI Config ------------------------------------------------------------->  
"Closer to looks of IDE 😀

"show line number in editor 
set number

"option cmd
" ============== set cmd [this will show last command in very bottom right of vim]

"draws a horizontal highlight (or underline, depending on your colorscheme) on the line your cursor is currently on
set cursorline

"give indentation a/c to your file type.
"make sure to add indent file in your vim directory, So that this command work correctly otherwise it will not work and show error while using vim
filetype indent on

"visual auto-complete for command menu
set wildmenu

"redraw only when we need 
set lazyredraw

"Higlighting all matching char or string in editor
"common feature shown in every editor
set showmatch

"Searching ------------------------------------------------------------->
"start search as character is entered
set incsearch

"highlight matches after search
set hlsearch

"stop search highlight key mapped to <space>
nnoremap <leader><space> :nohlsearch<CR>

"Folding ------------------------------------------------------------->
"Useful when writing huge lines of code
"enable folding
set foldenable


"-----------------------------------------------------------------------------------------------------------------------------------------------------
"-----------------------------------------------------------------------------------------------------------------------------------------------------
"-----------------------------------------------------------------------------------------------------------------------------------------------------

"These commands are enough for my work for now. You can add more commands based on ur needs
"For More detail visit https://dougblack.io/words/a-good-vimrc.html

"🤟🤟🤟                                                
