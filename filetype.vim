if exists("did_load_filetypes")
  finish
endif

" KDB+/q detection
augroup filetypedetect
  au! BufRead,BufNewFile *.k		setfiletype k
  au! BufRead,BufNewFile *.q		setfiletype q
  au! BufRead,BufNewFile *.s		setfiletype sql
  au! BufRead,BufNewFile *.csv		setfiletype csv
  au! BufRead,BufNewFile *.tsv		setfiletype csv
  au! BufRead,BufNewFile *.dat		setfiletype csv
  au! BufRead,BufNewFile *.cfg		setfiletype csv
  au! BufRead,BufNewFile config.*	setfiletype csv
augroup END
