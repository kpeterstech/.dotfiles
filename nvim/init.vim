" Basic guide followed for the my first neovim install
" https://www.jakewiesler.com/blog/getting-started-with-vim


" <---------- General Settings ---------->

" enables syntax Highlighting
syntax on

" Better colors
set termguicolors

set encoding=UTF-8

" Gets rid of the swap files
set noswapfile

" to have undo commands be availible between 
" sessions you need to create a directory to store
" undo files, then tell neovim to create undo files
set undodir=~/.config/nvim/undodir
set undofile

" Number of spaces in a <Tab>
set tabstop=4
set softtabstop=4
set expandtab

" enable autoindents
set smartindent

"number of spaces used for autoindents
set shiftwidth=4

" adds line numbers
set number
set relativenumber

" columns used for the line number
set numberwidth=4

" hightlights the matched text pattern when searching
set incsearch
set nohlsearch

" open splits intuitively
set splitbelow
set splitright

" navigate buffers without losing unsaved work
set hidden

" start scolling when 8 lines from top or bottom
set scrolloff=10

" Save undo history
set undofile

" Enable mouse support
set mouse=a

" Case insensitive search unless capital letters are used
set ignorecase
set smartcase

" Dont show current mode. The lightline plug in does this for us, so default
" mode is redunant
set noshowmode

" creates a column to the left for signs/symbols to display in (used with
" gitsigns plugin. More info with :h signcolumn
set signcolumn=yes

" enables system clipboard
set clipboard+=unnamedplus

" Does not wrap your text when you get the end of the screen
set nowrap

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticable
" delays and poor user experience.
set updatetime=50

" created a colored line at 80 spaces
"set colorcolumn=80

" Toggle invisible characters
set list
set listchars=tab:\ \ ,eol:¬,trail:⋅

" <---------- Plugin Settings ---------->

call plug#begin('~/.config/nvim/plugged')

" Quick Commenter
Plug 'numToStr/Comment.nvim'

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"allows for jumping to other words quickly with <leader> <leader> w,
"<leader> <leader> b to go back
Plug 'easymotion/vim-easymotion'	

" A required plugin for Telescope
Plug 'nvim-lua/plenary.nvim'

" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'

" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

" Lightline Status bar
Plug 'itchyny/lightline.vim'

" git integration
Plug 'tpope/vim-fugitive'

" gitsigns
Plug 'lewis6991/gitsigns.nvim'

" LSP
Plug 'neovim/nvim-lspconfig'

" Autocompletion requirements

" The Main Plugin
Plug 'hrsh7th/nvim-cmp'

" A dependency of nvim-cmp
Plug 'hrsh7th/cmp-nvim-lsp'

" Autocompletion for snippets
Plug 'L3MON4D3/LuaSnip'

" recommended in the defaults.nvim
Plug 'saadparwaiz1/cmp_luasnip'

" Autocompletion icons
Plug 'onsails/lspkind-nvim'

" Treesitter for improved syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

call plug#end()

" declare color scheme
"colorscheme tokyonight

colorscheme tokyonight-storm

set background=dark

" <---------- Remaps ---------->
let mapleader = ','

nnoremap <C-p> :Telescope find_files<Cr>

" enables tabs
nnoremap tn :tabnew<CR>

nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>

nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

"quick pairs - while in insert mode, press leader than the character to create
"both sides and place the cursor in between them
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i
imap <leader>{ {}<ESC>i

" For quick f-strings in python
imap <leader>f" f""<ESC>i
imap <leader>f' f''<ESC>i


lua require('kpeterstech')
