"==================================================
"                   基本设置
"==================================================
"不采用兼容模式
set nocompatible
"不自动备份，不生成.swp文件
set nobackup
set noswapfile
"自动保存
set autowrite
"共享粘贴板
set clipboard+=unnamed
"允许使用插件
filetype plugin on
"禁止响铃
set noeb vb t_vb=
"允许弹出确认窗口
set confirm
"显示命令窗口
set showcmd
"忽略大小写
set ignorecase
"==================================================
"                   外观设置
"==================================================
"设置语法高亮
syntax on
"显示行号
set nu
"显示标尺
set ru
"设置语法高亮
syntax on
"底端显示模式
set showmode
"取消欢迎界面
set shortmess=atI
"设置字体
set guifont=Consolas:h14
"禁用工具栏和菜单栏
set guioptions-=T
set guioptions-=m
"设置状态栏宽度
set laststatus=2
"高亮光标所在当前行
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline
"==================================================
"                  自动生成文件头 
"==================================================
"进行版权声明的设置
"添加或更新头
map <F4> :call TitleDet()<cr>'s
function AddTitle()
    call append(0,"/*=============================================")
    call append(1,"*")
    call append(2,"* Author: BonjourCS(Liang Chenghao)")
    call append(3,"*")
    call append(4,"* Email: lch_office@foxmail.com")
    call append(5,"*")
    call append(6,"* Last modified: ".strftime("%Y-%m-%d %H:%M"))
    call append(7,"*")
    call append(8,"* Filename: ".expand("%:t"))
    call append(9,"*")
    call append(10,"* Description: ")
    call append(11,"*")
    call append(12,"=============================================*/")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
"更新最近修改时间和文件名
function UpdateTitle()
    normal m'
    execute '/* *Last modified:/s@:.*$@\=strftime(":\t%Y-%m-%d %H:%M")@'
    normal ''
    normal mk
    execute '/* *Filename:/s@:.*$@\=":\t\t".expand("%:t")@'
    execute "noh"
    normal 'k
    echohl WarningMsg | echo "Successful in updating the copy right." | echohl None
endfunction
"判断前10行代码里面，是否有Last modified这个单词，
"如果没有的话，代表没有添加过作者信息，需要新添加；
"如果有的话，那么只需要更新即可
function TitleDet()
    let n=1
    "默认为添加
    while n < 10
        let line = getline(n)
        if line =~ '^\*\sLast\smodified:\S*.*$'
            call UpdateTitle()
            return
        endif
        let n = n + 1
    endwhile
    call AddTitle()
endfunction
"==================================================
"                    缩进设置
"==================================================
"设置退格为:
"- 可删除缩进字符(因为使用了tab,缩进其实也只是一个字符)
"- 跨行合并
"- 删除插入前的输入
set backspace=indent,eol,start
"设置tab宽度
set tabstop=4
"会混合输入tab和空格,不再使用这个
"set softtabstop=4
set shiftwidth=4
"禁止用空格代替tab
set noexpandtab
"智能对齐
set smartindent
"允许自动对齐
set autoindent
"使用C/C++缩进样式
set cindent
"==================================================
"                    编码设置
"==================================================
"设置缓冲区编码格式
set encoding=utf-8
"设置「猜想」编码列表
set fileencodings=utf-8,gbk,cp936,chinese
"设置文件保存编码
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.UTF-8
"解决终端乱码
if has("win32")
	set termencoding=gbk
else
	set termencoding=utf-8
endif
"==================================================
"                   自动补全设置
"==================================================
" 输入",',{,[等 自动补全将光标定位到中间
inoremap ( ()<ESC>i
inoremap ) <C-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <C-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <C-r>=ClosePair(']')<CR>
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

function! ClosePair(char)
    if getline('.')[col('.' - 1)] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
"==================================================
"                 按键映射
"==================================================
"<C-s> 保存文件
imap <C-s> <Esc>:w!<CR>
nmap <C-s> :w!<CR>
"<C-a> 全选
nmap <C-a> ggVG
imap <C-a> <Esc>ggVG
map <C-c> y
imap <C-c> y
"设置自动补全提示样式
set completeopt=longest,menu
"==================================================
"               Bundle设置
"==================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"插件列表
"|---
Plugin 'altercation/vim-colors-solarized'
"|---molokai主题
Plugin 'tomasr/molokai'
"|---插件管理器
Plugin 'VundleVim/Vundle.vim'
"|---快速对齐
Plugin 'godlygeek/tabular'
"|---前端神器
Plugin 'mattn/emmet-vim'
"|---状态栏
Plugin 'bling/vim-airline'
"|---匹配括号
Plugin 'tpope/vim-surround'
"|---注释神器
Plugin 'tpope/vim-commentary'
"|---官方注释
Plugin 'tComment'
Plugin 'a.vim'
"|--树形浏览
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on
"==================================================
"               插件设置
"==================================================
"---molokai主题设置
colorscheme molokai
let g:molokai_original=1
let g:rehash256=1
""set background=light
""colorscheme solarized
""let g:solarized_termcolors=256
"---NERDTree配置 
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
"启动时打开NERDTree,暂时不需要
"autocmd vimenter * if !argc() | NERDTree | endif
"如果只剩下NERDTree时，关闭Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"使用<F12>打开NERDTree
nmap <F12> :NERDTreeToggle<cr>
