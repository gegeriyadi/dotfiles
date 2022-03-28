lua << EOF
require("bufferline").setup{
options = {
    separator_style = "thin"
    }
}
EOF

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>
