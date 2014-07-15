set nocompatible
syntax on
colors desert
vmap <tab> >gv
vmap <s-tab> <gv
set ts=4 "tabstop
set sw=4 "shiftwidth
set visualbell " Alert 음을 화면 깜박임으로 바꿔보여주기
 
set encoding=cp949
set fileencodings=utf-8,cp949
set langmenu=cp949
set guifont=Gulimche:h14:cHANGEUL
 
 
" set lisp 
set number
set et
"set autoindent
"set smartindent
"set cindent
set hlsearch
set ruler
filetype plugin indent on
set expandtab
map <F2> <C-W>w
map <F3> [{v]}zf
map <F4> zo
map <F5> :20vs ./<CR>:set nonumber<CR>
map <F6> :!g++ % & a < %:r.in > %:r.cout 2>%:r.cerr&<CR>
"map <F6> :!g++ % & a > %.cout <CR>
" :!g++ % a 2> %.output :stderr   "linux
map <F7> O
map <F8> [i
map <F9> gd
"scripte utf-8
"let $LANG='ko.utf-8'
if has("gui_running")
	source $VIMRUNTIME/delmenu.vim
	set langmenu=ko.UTF-8
	source $VIMRUNTIME/menu.vim
	" Set the initial state of IME as English for insert/search mode.
	set iminsert=0 imsearch=0
 
	" Toggle menu/tool bars
	function s:MenuBar()
		if stridx(&guioptions, 'm') == -1
			set go+=T go+=m
		else
			set go-=T go-=m
		endif
	endfunction
	map <silent> <F10> :call <SID>MenuBar()<cr>
	call <SID>MenuBar()
endif

set nobackup       "no backup files
set swapfile
set dir=z:/


"pathogen
execute pathogen#infect()
"NERDTree
"map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif


"remove mswin <C-a> select all
nunmap <C-a>
