"==================================================
"                Basic Edit Setting               "
"==================================================
"disable compatible
set nocompatible
"disable autobackup
set nobackup
"==================================================
"              	 Display Setting                  " 
"==================================================
"set syntax on
syntax on
"show line number
set nu
"show ruler
set ru
"enable syntax 
syntax on
"set vim scheme
colorscheme desert
"set font
set guifont=Ubuntu_Mono:h14
"set status bar info
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
"==================================================
"              Indent Setting                     "	
"==================================================
"enalbe backspace
set backspace=2
"set expand width
set expandtab
set tabstop=4
set softtabstop=4
"set shiftwidth
set shiftwidth=4
"set tab width
set ts=4 
"global tab key
set expandtab
"set auto indent
set autoindent
"enable C/C++ indent
set cindent
"==================================================
"             Autocomplete Setting                " 
"==================================================
"command autocomplete
set wildmenu
set wildmode=full
"==================================================
"                 Bundle Settings                 "
"==================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Bundle List
Plugin 'VundleVim/Vundle.vim'
Plugin 'matten/emmet-vim'
call vundle#end()
filetype plugin indent on
