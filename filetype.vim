if exists("did_load_filetypes")
  finish
endif

" KDB+/q detection
augroup filetypedetect
  au! BufRead,BufNewFile *.k		setfiletype k
  au! BufRead,BufNewFile *.q		setfiletype q
  au! BufRead,BufNewFile *.s		setfiletype sql
  au! BufRead,BufNewFile Jamroot    setfiletype jam
  au! BufRead,BufNewFile Jamfile    setfiletype jam
  au! BufRead,BufNewFile *.jam      setfiletype jam
augroup END
