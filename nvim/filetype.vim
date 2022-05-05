" Define filetypes

if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    " This is the place to specify filetypes to autodetect (e.g. jsx)
    au! BufRead,BufNewFile *.mine	setfiletype mine
augroup END
