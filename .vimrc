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
"设置Vim主题
colorscheme desert
"底端显示模式
set showmode
"取消欢迎界面
set shortmess=atl
"设置字体
set guifont=Consolas:h14
"设置状态栏信息 使用了airline,因此用不到了
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
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
set fileencodings=utf-8,gkb,gb2312,chinese
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
set termencoding=gbk "中文环境终端的默认编码
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

"设置自动补全提示样式
set completeopt=longest,menu
"==================================================
"               Bundle设置
"==================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"插件列表
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'bling/vim-airline'
Plugin 'a.vim'
Plugin 'tpope/vim-commentary'
Plugin 'iamcco/markdown-preview.vim'
call vundle#end()
filetype plugin indent on
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
