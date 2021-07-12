call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'StanAngeloff/php.vim'
Plug 'jwalton512/vim-blade'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/goyo.vim'
Plug 'moll/vim-bbye'
Plug 'iamcco/markdown-preview.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'tomtom/tcomment_vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'posva/vim-vue'
Plug 'Yggdroot/indentLine'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'markdown',
    \ 'vue',
    \ 'php',
    \ 'python',
    \ 'html' ] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'arnaud-lb/vim-php-namespace'

call plug#end()

" set leader key
let mapleader=","

set t_Co=256
set background=dark
colorscheme onedark

" markdown
set conceallevel=0

highlight Comment cterm=italic
highlight phpInclude cterm=italic guifg=#E32791
highlight phpKeyword cterm=italic guifg=#E32791
highlight phpType cterm=italic guifg=#E32791

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
    set termguicolors
endif

" fzf vim setting
nmap ff :call fzf#run({
            \ 'source': 'git ls-files --exclude-standard --others --cached',
            \ 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Normal', 'rounded': v:false },
            \ 'sink': 'edit'
            \ })<Enter>

" General
set number              " Show line numbers
set number relativenumber
" set foldcolumn=3        " add margin on left vim
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

" Generated by VimConfig.com
inoremap jj <ESC>
inoremap kk <ESC>

" map for save
nnoremap ;; :w<CR>

" map for buffer
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap gd :bd<CR>

" netrw setup
let g:netrw_banner = 0
" set autochdir

set mouse=a

" map for noh
nnoremap ,<space> :noh<CR>

" disable arrow
nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h"<cr>
nnoremap <Right> :echomsg "use l"<cr>

" split panel shortcut movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Move to beginning/end of line
nnoremap B ^
nnoremap E $
vnoremap E $

filetype plugin indent on

autocmd BufRead,BufNewFile *.blade.php set filetype=blade

" Define some single Blade directives. This variable is used for highlighting only.
let g:blade_custom_directives = ['datetime', 'javascript']
"
" " Define pairs of Blade directives. This variable is used for highlighting and indentation.
let g:blade_custom_directives_pairs = {
            \   'markdown': 'endmarkdown',
            \   'cache': 'endcache',
            \ }

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

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" COC settings
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" ultisnips use python3
let g:UltiSnipsUsePythonVersion = 3

set directory=~/.vim/swapfiles/

" change cursor when change mode
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"

" remap q simple recording
nnoremap <Space> @q

" remap tabedit
nnoremap te :tabedit<CR>

highlight htmlArg cterm=italic

" vim namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

let g:indentLine_char = '│'
let g:indentLine_enabled = 1
