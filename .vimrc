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
set guifont=Consolas:h13
"禁用工具栏和菜单栏
set guioptions-=T
set guioptions-=m
"设置状态栏宽度
set laststatus=2
"动态高亮搜索关键字
set incsearch
"设置不可见字符可见
set list
set listchars=eol:$,tab:&-,trail:~,extends:>,precedes:<
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
set fileencodings=utf-8,gbk,gb2312,chinese
"设置文件保存编码
set fileencoding=utf-8
if has("win32")
    set fileencoding=chinese
	"解决终端乱码
	set termencoding=gbk "中文环境终端的默认编码,chcp 可更改默认编码
else
    set fileencoding=utf-8
endif
"解决Windows下菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language message zh_CN.UTF-8
"==================================================
"                   自动补全设置
"==================================================
"括号自动补全
inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap " ""<left>
inoremap ' ''<left>
"==================================================
"                 按键映射
"==================================================
"<C-s> 保存文件
imap <C-s> <Esc>:w!<CR>
nmap <C-s> :w!<CR>
"<C-C> 全选
"nmap <C-C> ggVG
"imap <C-a> <Esc>ggVG
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
"|---主题
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"|---插件管理器
Plugin 'VundleVim/Vundle.vim'
"|---快速对齐
Plugin 'godlygeek/tabular'
"|---前端神器
Plugin 'mattn/emmet-vim'
"|---状态栏
Plugin 'bling/vim-airline'
"|---方法预览栏
Plugin 'majutsushi/tagbar'
"|---超级tab键
Plugin 'ervandew/supertab'
"|---多行游标
Plugin 'terryma/vim-multiple-cursors'
"|---匹配括号
Plugin 'tpope/vim-surround'
"|---注释神器
Plugin 'tpope/vim-commentary'
"|---官方注释
Plugin 'tComment'
Plugin 'a.vim'
"|--树形浏览
Plugin 'scrooloose/nerdtree'
"|---Python-mode
Plugin 'klen/python-mode'
"|---ASCII绘图
Plugin 'DrawIt'
call vundle#end()
filetype plugin indent on
"==================================================
"               插件设置
"==================================================
"---主题设置
"在Windows中molokai更好用，所以使用如下设置
if has("win32")
	colorscheme molokai
	let g:molokai_original=1
	let g:rehash256=1
else
	set background=dark
	colorscheme solarized
endif
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
