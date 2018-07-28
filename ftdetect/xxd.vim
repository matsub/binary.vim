autocmd BufReadPost * if &binary
            \| set ft=xxd
            \| endif
