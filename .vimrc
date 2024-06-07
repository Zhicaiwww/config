call plug#begin('~/.vim/plugged')
Plug 'christoomey/vim-tmux-navigator'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'lervag/vimtex'
Plug 'godlygeek/tabular'
Plug 'preservim/nerdtree'
Plug 'plasticboy/vim-markdown'
" Plug 'mzlogin/vim-markdown-toc'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
let mapleader = "\<space>"
let maplocalleader = "," 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <silent> <C-F> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
nnoremap <leader>w <C-W><C-C> "关闭当前windows
nnoremap <leader>p :PlugInstall<CR>  
nnoremap <leader>c :PlugClean<CR>  

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
colorscheme pablo     " 设置颜色主题
highlight NvimTreeFolderIcon guibg=blue
 
syntax on               " 语法高亮
syntax enable

filetype on             " 检测文件的类型
filetype plugin indent on

set nocp
filetype plugin on		" set up netrw
set termguicolors " this variable must be enabled for colors to be applied
set mouse=a
set hidden
set number 
set relativenumber              " 显示行号
set cursorline          " 用浅色高亮当前行
set ruler               " 在编辑过程中，在右下角显示光标位置的状态行
set laststatus=2        " 显示状态栏 (默认值为 1, 无法显示状态栏)
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\
                        " 设置在状态行显示的信息
set tabstop=4           " Tab键的宽度
set softtabstop=4
set shiftwidth=4        " 统一缩进为4
 
set autoindent          " vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进)
set cindent             " (cindent是特别针对 C语言语法自动缩进)
set smartindent         " 依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
 
set scrolloff=3         " 光标移动到buffer的顶部和底部时保持3行距离
 
set incsearch           " 搜索内容时就显示搜索结果
set hlsearch            " 搜索时高亮显示被找到的文本
 
set foldmethod=indent   " 设置缩进折叠
set foldlevel=99        " 设置折叠层数
set modelines=0		" CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set clipboard=unnamed " 使用共用的复制面板
" viewer method:

let g:vimtex_view_method = 'zathura'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
let g:vimtex_compiler_method = 'latexmk'
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode = 0
let g:vimtex_view_general_viewer = 'zathura'
" Most VimTeX mappings rely on localleader and this can be changed with the
" following line. The default is usually fine and is the symbol "\".
" 自动跳转到上次退出的位置
let g:vim_markdown_math = 1
let g:vmt_auto_update_on_save = 0
" let g:mkdp_path_to_chrome = "~/Library/Application Support/Google/Chrome"
let g:mkdp_markdown_css=''
if has("autocmd")

    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endi 
