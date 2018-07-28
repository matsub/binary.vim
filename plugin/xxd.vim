augroup Binary
    autocmd!
    autocmd BufReadPost * if &binary
                \| silent %!xxd -g 2
                \| endif
    autocmd BufWritePre * if &binary
                \| %!xxd -r
                \| endif
    autocmd BufWritePost * if &binary
                \| silent %!xxd -g 2
                \| set nomod
                \| endif
augroup END
