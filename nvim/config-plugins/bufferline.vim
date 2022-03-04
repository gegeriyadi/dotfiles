lua << EOF
require("bufferline").setup{
options = {
    separator_style = "slant"
    }
}
EOF

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>
