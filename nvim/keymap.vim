" st leader key
let mapleader=","

" enerated by VimConfig.com
inoremap jj <ESC>
inoremap kk <ESC>

" map for save
nnoremap ;; :w<CR>

" map for buffer
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>

" map for noh
nnoremap <leader><space> :noh<CR>

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

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" remap q simple recording
nnoremap <Space> @q

" remap tab
nnoremap te :tabedit<CR>
nnoremap tn :tabn<CR>
nnoremap tp :tabp<CR>
nnoremap tc :tabc<CR>


