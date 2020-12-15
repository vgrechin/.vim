if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
" KDB+/q detection
  au! BufRead,BufNewFile *.k		setfiletype k
  au! BufRead,BufNewFile *.q		setfiletype q
  au! BufRead,BufNewFile *.s		setfiletype sql
" Boost.Jam detection
  au! BufRead,BufNewFile Jamroot    setfiletype jam
  au! BufRead,BufNewFile Jamfile    setfiletype jam
  au! BufRead,BufNewFile *.jam      setfiletype jam
" CSV detection
  au! BufRead,BufNewFile *.csv		setfiletype csv
  au! BufRead,BufNewFile *.tsv		setfiletype csv
  au! BufRead,BufNewFile *.dat		setfiletype csv
  au! BufRead,BufNewFile *.cfg		setfiletype csv
  au! BufRead,BufNewFile config.*	setfiletype csv
augroup END
