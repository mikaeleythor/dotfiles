" Install plugins

call plug#begin("~/.config/nvim/autoload")
	Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Snippets from buffer and file system
    Plug 'honza/vim-snippets'			                " Imported snippets
	Plug 'scrooloose/nerdtree'			                " Dirtree
    Plug 'nvim-lualine/lualine.nvim'                    " Statusline
    "Plug 'Mofiqul/dracula.nvim'
    Plug 'folke/tokyonight.nvim', {'branch': 'main'}    " Colorscheme
        let g:tokyonight_style='storm'
        let g:tokyonight_italic_comments='true'
        let g:tokyonight_italic_keywords='true'
        let g:tokyonight_italic_functions='true'
        let g:tokyonight_dark_sidebard='true'
	Plug 'ryanoasis/vim-devicons'		                " Nerd glyphs for NERDTree
	Plug 'iamcco/markdown-preview.nvim', {'do': 'cd app && yarn install' }
	Plug 'preservim/nerdcommenter'
    Plug 'chrisbra/Colorizer'                           " CSS hex highlighting
        let g:colorizer_auto_filetype='css,html,jsx,yml'
        let g:colorizer_skip_comments=1
    Plug 'xuhdev/vim-latex-live-preview'                " Live rendering
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

" Toggle Colorizer
nnoremap <C-o>  :ColorToggle<Return>
vnoremap <C-o>  :ColorToggle<Return>

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

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END
