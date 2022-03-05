call plug#begin('~/.vim/plugged')

Plug 'EdenEast/nightfox.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/markdown-preview.vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" neovim
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mhinz/vim-startify'
Plug 'akinsho/bufferline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

colorscheme nordfox

set t_Co=256

" markdown
set conceallevel=0

highlight Comment cterm=italic

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

" General
" set number              " Show line numbers
" set number relativenumber
set foldcolumn=3        " add margin on left vim
set linespace=15
set linebreak           " Break lines at word (requires Wrap lines)
set breakindent
set showmatch           " Highlight matching brace
set visualbell          " Use visual bell (no beeping)

set hlsearch            " Highlight all search results
set smartcase           " Enable smart-case search
set ignorecase          " Always case-insensitive
set incsearch           " Searches for strings incrementally

set autoindent          " Auto-indent new lines
set expandtab           " Use spaces instead of tabs
set smarttab            " Enable smart-tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Advanced
set ruler                       " Show row and column ruler information

set undolevels=1000     " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour
" set colorcolumn=80

" netrw setup
let g:netrw_banner = 0
" set autochdir

set mouse=a

filetype plugin indent on

" emmet: to trigger press double ,,
let g:user_emmet_leader_key=','

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system(s:clip, join(v:event.regcontents, "\<CR>"))
    augroup END
end

" markdown preview set
let g:mkdp_path_to_chrome = '/mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe'

set laststatus=2

set directory=~/.vim/swapfiles/

" change cursor when change mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

highlight htmlArg cterm=italic

let g:indentLine_char = '│'
let g:indentLine_enabled = 1

highlight EndOfBuffer ctermfg=black ctermbg=black

lua << END
require('lualine').setup()
END

" auto tab size on spesific language
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype vue setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd Filetype go setlocal tabstop=4 softtabstop=0 noexpandtab
autocmd Filetype php setlocal tabstop=4 softtabstop=0 noexpandtab
autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab

source ~/.config/nvim/keymap.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/bufferline.vim
source ~/.config/nvim/plugins/treesitter.vim
