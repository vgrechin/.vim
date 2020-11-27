execute pathogen#infect()

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/lib/python3.6/site-packages/powerline/bindings/vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'powerline/powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
let python_highlight_all=1
let g:NERDTreeDirArrows=0


" Set indent, layout and tabs to spaces mode
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set number
set term=xterm-256color

"set previewheight=12
"run macros/gdb_mappings.vim
"set asm=0
"set gdbprg=gdb_invocation          " set GDB invocation string (default 'gdb')


" Set status line status
set wildmenu
set laststatus=2
set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]

" my highlights
highlight Comment font= cterm=NONE ctermfg=darkblue
highlight Todo font= cterm=underline ctermbg=yellow ctermfg=red

set nowrap     " Disable lines wrapping
set nobackup     " Create backup files (filename~)
set autoindent " Autoindent (depends on file's type)
set sidescroll=5 " прокрутка вправо/влево, когда строка заезжает за когда вы по ней ползаете
set listchars+=precedes:<,extends:> " показывать символы > OR < если есть что слева и или справа от строки
set ignorecase " игнорировать прописные и строчные символы при поиске
set incsearch  " перескакивать на результаты поиска при вводе 
set hlsearch   " подсвечивать результаты поиска

let &errorformat="%f:%l:%c: %t%*[^:]:%m,%f:%l: %t%*[^:]:%m," . &errorformat 

"set foldmethod=indent
set hidden

"autocmd VimLeavePre * silent mksession ~/.vim/lastsession.vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <F5> :tablast<cr>:make<cr>:copen<cr>
map <C-F5> :tablast<cr>:make clean<cr>:make<cr>:copen<cr>
map <F6> :cope <CR>
map <F7> :cn<cr>zvzz:cc<cr>
"map <F8> :cn<cr>zvzz:cc<cr>
map <S-F7> :cp<cr>zvzz:cc<cr>

map <F2> :NERDTreeToggle<cr>

" Tab navigation
"map <F3> :tabnext<cr>
"vmap <F3> <esc>:tabnext<cr>
"imap <F3> <esc>:tabnext<cr>

"map <F2> :tabprevious<cr>
"vmap <F2> <esc> :tabprevious<cr>
"imap <F2> <esc> :tabprevious<cr>

"imap <F4> :tabclose<cr>
"vmap <F4> <esc>:tabclose<cr>
"imap <F4> <esc>:tabclose<cr>

"map <F12> :Ex<cr>
"vmap <F12> <esc>:Ex<cr>i
"imap <F12> <esc>:Ex<cr>i

" CTRL+y => remove current line
"nmap <C-y> dd
"imap <C-y> <esc>ddi

" CTRL+c/v => copy/paste to global clipboard
"vmap <C-C> "+yi
"imap <C-V> <esc> "+gPi

" F2 - quick save
nmap <C-s> :w<cr>
vmap <C-s> <esc>:w<cr>i
imap <C-s> <esc>:w<cr>i

" Set auto-completeon by tab!!!
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col-1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>

" Set autocompleteon from
set complete="" 
set complete+=. "current buffer
set complete+=k "dictonary
set complete+=b "other buffers
set complete+=t "tags

