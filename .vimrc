" vundle 配置
" :BundleInstall 进行安装
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}
" vim-colors-solarized color theme
Plugin 'altercation/vim-colors-solarized'
" molokai
Plugin 'tomasr/molokai'
" emmet
Plugin 'mattn/emmet-vim'
" Vastly improved Javascript indentation and syntax support in Vim.
Plugin 'pangloss/vim-javascript'
" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box.
"Plugin 'klen/python-mode'
" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
" A tree explorer plugin for vim
Plugin 'scrooloose/nerdtree'
" PEP8
Plugin 'pep8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"
"==============配色, 字体========================================================
" solarized配色方案
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized


" molokai配色方案的设置
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
autocmd BufNewFile,BufRead * :syntax match cfunctions "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi cfunctions ctermfg=81
set cursorline    "设置光标所处的行的行号颜色



"字体设置
"set guifont=文泉驿等宽微米黑\ 12

"==============编码========================================================
"vim内部的文件编码,即vim程序显示的编码
set encoding=utf-8

"当前编辑文件的文件编码
"set fileencoding=utf-8
set fileencodings=usc-bom,utf-8,gbk,cp936,gb2312,big5,euc-jp,euc-kr.latinl

"防止特殊符号无法正常显示
"set ambiwidth=double "linux 不要开启，开启会有问题


"=============通用配置=====================================================
"关闭兼容模式
set nocompatible

"缩进尺寸为4个空格
set sw=4
"
"tab宽度为4个字符，在按tab键时，前面有东西安装ts值，如果他前面是空的会认为是缩进会按照sw的值
set ts=4  

"编辑时将所有tab替换为空格
set et
"
"按一次backspace就删除4个空格
set smarttab

"设置Paste复制键
set pastetoggle=<F1>
"
"不生成备份文件，如~index.html
set nobackup

"开启行号
set number

"开启自动缩进
set autoindent

"防止shift 误操作
command Q q
command  Wq wq
command WQ wq
cnoremap Q! q!
cnoremap Wq! wq!
cnoremap WQ! wq!
cnoremap WQ1 wq!
cnoremap wq1 wq!
cnoremap Wq1 wq!
cnoremap wQ1 wq!
cnoremap q1 q!
cnoremap Q1 q!


"自动括号
inoremap {{ {<CR>}<Esc>O
inoremap (( ()<Esc>i
inoremap [[ []<Esc>i

" airline
"let g:airline_theme="luna" 
set laststatus=2
"let g:airline_powerline_fonts = 1   
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeWinPos='right'
