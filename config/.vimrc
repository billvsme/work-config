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
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
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
" Plugin 'pep8'
" syntastic
Plugin 'scrooloose/syntastic'
" vue.js
Plugin 'posva/vim-vue'

" auto complete
" Plugin 'Valloric/YouCompleteMe'
" rust-lang
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'

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

set undofile
set backup
set swapfile
" 指定.*.un~ 文件位置，需要事先创建好此文件夹
"set undodir=~/.vim/.undodir

"==============配色, 字体========================================================
" solarized配色方案
"let g:solarized_termcolors=256
"syntax enable
"set background=dark
"colorscheme solarized


syntax enable
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
"set smarttab

autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ai
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sw=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set ts=4
autocmd FileType php,python,c,java,perl,shell,bash,vim,ruby,cpp set sts=4
autocmd FileType javascript,html,css,xml,vue set ai
autocmd FileType javascript,html,css,xml,vue set sw=4
autocmd FileType javascript,html,css,xml,vue set ts=8
autocmd FileType javascript,html,css,xml,vue set sts=4

"设置Paste复制键
set pastetoggle=<F1>
"
"不生成备份文件，如~index.html
set nobackup

"开启行号
set number

"开启相对行号
set relativenumber

"高亮显示列
set cursorcolumn

"开启自动缩进
set autoindent

" pep8 每行79
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%80v.\+/

"highlight ColorColumn ctermbg=gray
set colorcolumn=80

"let &colorcolumn=join(range(81,999),",")
"let &colorcolumn="80,".join(range(400,999),",")

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
cnoremap w1 w
cnoremap W1 w
cnoremap q1 q!
cnoremap Q1 q!


"自动括号
inoremap {{ {<CR>}<Esc>O
inoremap (( ()<Esc>i
inoremap [[ []<Esc>i
inoremap '' ''<Esc>i
inoremap "" ""<Esc>i

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


" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--max-line-length=100'
let g:syntastic_javascript_checkers = ['eslint']
map <F2> :SyntasticCheck<CR>
map <F3> :SyntasticReset<CR>

" 复制
" 注意vim 版本，mac 自带vim 无用
set clipboard=unnamed

" mac 自带vim可用，mac 下 pbcopy 可用复制内容到剪切板
"map "+y :w !pbcopy<CR><CR> 
"map "+p :r !pbpaste<CR><CR> 

" fast down up
map <C-j> 10j
map <C-k> 10k
map <C-h> 5h
map <C-l> 5l

" see https://www.v2ex.com/t/96300
" ctrl-x for cut 
vmap <C-x> :!pbcopy<cr> 
" ctrl-c for copy 
vmap <C-c> :w !pbcopy<cr><cr> 
" ctrl-v for paste 
" 因为ctrl-v 进入 v-block 模式
" nmap <C-v> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR> 
imap <C-v> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR> 

" rust文件识别
autocmd BufNewFile,BufRead *.rs set filetype=rust
