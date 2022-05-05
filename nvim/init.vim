" Install plugins

call plug#begin("~/.config/nvim/autoload")
	Plug 'neoclide/coc.nvim', {'branch': 'release'} " Snippets from buffer and file system
    Plug 'honza/vim-snippets'			            " Imported snippets
	Plug 'scrooloose/nerdtree'			            " Dirtree
	Plug 'folke/tokyonight.nvim'		            " Colorscheme
	Plug 'ryanoasis/vim-devicons'		            " Nerd glyphs for NERDTree
	Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install' }
	Plug 'preservim/nerdcommenter'
    Plug 'chrisbra/Colorizer'                       " CSS hex highlighting
        let g:colorizer_auto_filetype='css,html,jsx'
        let g:colorizer_skip_comments=1
    Plug 'xuhdev/vim-latex-live-preview'            " Live rendering
        let g:livepreview_previewer='zathura'

call plug#end()

" Mapleader is an important keymap used e.g. by nerdcommenter
let mapleader = "æ" 

" Newline from insert mode
inoremap <C-j> <Esc>o
inoremap <C-k> <Esc>O

" Open NERDTree
nnoremap <C-n>	:NERDTree<Return>
vnoremap <C-n>	:NERDTree<Return>

" Move block or line
inoremap <A-j>	<Esc>:m .+1<CR>==gi
inoremap <A-k>	<Esc>:m .-2<CR>==gi
vnoremap <A-j>	:m '>+1<CR>gv=gv
vnoremap <A-k>	:m '<-2<CR>gv=gv

" Navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Move windows
nnoremap <A-h> <C-w>H
nnoremap <A-j> <C-w>J
nnoremap <A-k> <C-w>K
nnoremap <A-l> <C-w>L

" Expand snippets
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Open new tab
nnoremap <C-t>  :tabnew<Return>
inoremap <C-t>  :tabnew<Return>

" Close tab
nnoremap <C-w>  :tabc<Return>
inoremap <C-w>  :tabc<Return>

" Navigate tabs
nnoremap <C-S-l> gt    
inoremap <C-S-l> gt    
vnoremap <C-S-l> gt    
nnoremap <C-S-h> gT    
inoremap <C-S-h> gT    
vnoremap <C-S-h> gT    

set autoindent              " Enable autoindent
set cc=80                   " Highlight column no 80 for delimination
set clipboard=unnamedplus   " Share clipboard with external programs
set cursorline				" Highlight cursorline
set hlsearch				" Highlight search results
set ignorecase				" Ignore case when searching
set incsearch				" Incremental highlighting search results
set number                  " Show line numbers
set showmatch				" Show matching brackets
set splitright				" Vertical split new windows to right
set splitbelow				" Horizontal split new windows to below
set wildmode=longest,list   " Set mode of tab completion

set expandtab				" Change tabs to spaces
set tabstop=4   			" Set tabs to 4 spaces
set shiftwidth=4			" Set autoindent width to 4 spaces
set softtabstop=4			" Set tabs to 4 spaces

syntax on
colorscheme tokyonight
