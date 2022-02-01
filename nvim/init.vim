:set number
:set autoindent
:set tabstop=4
:set shiftwidth=3
:set smarttab
:set mouse=a
:set mouse=n
:set softtabstop=4
:set bg=dark
:set relativenumber
:set display=lastline
":set fillchars+=vert:\ | set fillchars-=vert:\
call plug#begin("~/.vim/plugged")
 " Plugin Section
    Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
    Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
    Plug 'vim-airline/vim-airline-themes'
	Plug 'https://github.com/vim-airline/vim-airline' " Status bar
    Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
    Plug 'ryanoasis/vim-devicons'
    Plug 'scrooloose/nerdtree'
	Plug 'bryanmylee/vim-colorscheme-icons'
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mhinz/vim-startify'
	Plug 'jiangmiao/auto-pairs'
    Plug 'luochen1990/rainbow'
    Plug 'funorpain/vim-cpplint'
    Plug 'SirVer/ultisnips'
	Plug 'caenrique/nvim-toggle-terminal'
	Plug 'morhetz/gruvbox'
	Plug 'honza/vim-snippets'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let g:coc_global_extensions = ['coc-emmet','coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

call plug#end()
autocmd vimenter * ++nested colorscheme sonokai
hi VertSplit guibg=NONE
hi SignColumn guibg=NONE
"Important Remaps
:imap jj <Esc>
vnoremap <C-c> "+y
map <C-v> "+p
"Select all
nmap <C-a> gg<S-v>G

set encoding=UTF-8
" air-line

source $HOME/.config/nvim/Plugin-Configs/airlinetabconfig.vim

"Config For NerdTree and DeviICons

source $HOME/.config/nvim/Plugin-Configs/NerdTreeConfig.vim

"Inbuilt terminal Settings

source $HOME/.config/nvim/Plugin-Configs/NvimKeymaps.vim

"C++ Configs
	
source $HOME/.config/nvim/Plugin-Configs/allCocremaps.vim

	
let g:startify_custom_header = [
\ '                              ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
\ '                              ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
\ '                              ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
\ '                              ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
\ '                              ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
\ '                              ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
\]

let g:UltiSnipsSnippetDirectories=[$HOME.'.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger = '<f5>'




set splitbelow splitright

" Make adjusing split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K
map <Leader>tt :vnew term://fish<CR>























"Keymap for terminal
nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>

