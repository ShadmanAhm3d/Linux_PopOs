"Config For airline
let g:airline#extensions#tabline#enabled = 1
" move among buffers with CTRL
    map <C-J> :bnext<CR>
	map <C-TAB> :bprev<CR> 

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
"
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


