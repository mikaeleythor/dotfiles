" Install plugins
call plug#begin("~/.vim/autoload")
    Plug 'dracula/vim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets from buffer and file system
    Plug 'ryanoasis/vim-devicons' " Nerd glyphs for nerdtree
    Plug 'SirVer/ultisnips'
        let g:UltiSnipsExpandTrigger="<Leader><Space>"
        let g:UltiSnipsJumpForwardTrigger="<Leader><Tab>"
        let g:UltiSnipsJumpBackwardTrigger="<Leader><S-Tab>"
    Plug 'honza/vim-snippets'
    Plug 'scrooloose/nerdtree' " Dirtree
    Plug 'lervag/vimtex' " Latex syntax highlighting and indent
    Plug 'tanvirtin/vgit.nvim'
    Plug 'preservim/nerdcommenter'
    "Plug 'mhinz/vim-startify' " Very ugly landing page
    Plug 'MaxMEllon/vim-jsx-pretty' " React syntax highlighting and indentation
    Plug 'pangloss/vim-javascript' " JS syntax highlighting and indentation
    Plug 'styled-components/vim-styled-components', {'branch': 'main'}
    Plug 'chrisbra/Colorizer' " CSS hex highlighting
    Plug 'aklt/plantuml-syntax'
    Plug 'weirongxu/plantuml-previewer.vim'
    Plug 'tyru/open-browser.vim' " dependency of plantuml-previewer
call plug#end()

" Set something
set nocompatible
set showmatch
set ignorecase
set hlsearch
set incsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set wildmode=longest,list
set cc=80
set clipboard=unnamedplus
set cursorline
set splitright
set splitbelow

syntax on
"filetype plugin on
colorscheme dracula

let mapleader = "æ" 
let g:colorizer_auto_filetype='css,html'
let g:colorizer_skip_comments = 1

" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open nerdtree from any mode with ctrl-n
nnoremap <C-n> :NERDTree<Return>
"inoremap <C-n> :NERDTree<Return>
vnoremap <C-n> :NERDTree<Return>

" Coc snippets
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

inoremap <C-j> <Esc>o
inoremap <C-k> <Esc>O
