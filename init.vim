call plug#begin()
  Plug 'preservim/nerdtree'
  "vim-snazzy
  Plug 'connorholyday/vim-snazzy'

"vim-airline
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
"coc.nvim
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
"vim-snippets
Plug 'honza/vim-snippets'
"配色方案
Plug 'HerringtonDarkholme/yats.vim'
"语言服务
Plug 'prabirshrestha/vim-lsp'
"语言服务的设置
Plug 'mattn/vim-lsp-settings'
call plug#end()


"some shortcuts about nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"some shortcuts about coc-terminal
noremap <M-`> :CocCommand terminal.Toggle<CR><c-><c-n><c-w>wJ
tnoremap <M-`> <c-\><c-n>:CocCommand terminal.Toggle<CR>
tnoremap <C-t> <c-\><c-n>:NERDTreeToggle<CR>
"some shortcuts about coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')
"让配置变更立即生效
autocmd BufWritePost ~/.vimrc source ~/.vimrc 

"Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"定义在插入模式下连续按下两个 jj 就相当于按下了ESC键一样
"退出insert模式进入Normal
inoremap jj <ESC>

" 定义在进入vim 的时候默认显示行号
":set nu
":set relativenumber
:set hlsearch

"some shortcuts about vim
"文件保存与退出  
nmap fw     :w<CR>  
nmap fq     :q<CR>  
nmap fwq    :wq<CR> 

"行光标移动
nmap lh   ^
nmap le   $

"快速的上下移动
nmap U 5k
nmap D 5j

"代码高亮
syntax on

"在当前行显示一条线
set cursorline

"设置可以超过当前屏幕宽度可以换行
set wrap

"在下方状态栏显示我输入的字符
"set showcmd

"输入命令的时候按下tab键自动补全
set wildmenu

"在进入一个新文件的时候我不想高亮之前缓存里面存在的高亮搜索
exec "nohlsearch"

"忽略大小写搜索
set ignorecase

"智能识别是否区分大小写
set smartcase

"搜索的时候上一个下一个的优化
noremap n nzz
noremap N Nzz

"快捷键操作
let mapleader = " "
noremap <LEADER><CR> :nohlsearch<CR>

"双括号自动补全
inoremap ( ()<ESC>i
"设置（自动补全
inoremap [ []<ESC>i
"设置[自动补全
inoremap { {}<ESC>i
"设置{自动补全
inoremap < <><ESC>i
"设置<自动补全
inoremap ' ''<ESC>i
"设置'自动补全
inoremap " ""<ESC>i
"设置"自动补全

set nu               "设置显示行号
set relativenumber   "设置绝对行号
set tabstop=2        "设置tab健的长度为2
set ruler            "设置标尺
set ai               "设置文本高亮
set autoindent       "设置自动缩进（与上一行的缩进相同）
"Prettier 的配置
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
"cochight 的配置
autocmd CursorHold * silent call CocActionAsync('highlight')




