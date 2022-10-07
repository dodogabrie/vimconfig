set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/.config/nvim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'morhetz/gruvbox'
Plugin 'lervag/vimtex'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" plugin on GitHub repo

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set background=light
set t_Co=256
set cursorline
colorscheme onehalflight
let g:airline_theme='onehalfdark'
"set termguicolors
syntax on			" Show syntax
set showmode			" Show modality
set noerrorbells 		" No sound
set showcmd			" Show command
set number			" line number
set autoindent			" autoindentation
set shiftwidth=4		" deep of autoin.
set wrap linebreak nolist 	" not hard wrap
set spell spelllang=it,en_us	" Spell
set backupdir=~/.config/nvim/.backup//	" 
set directory=~/.config/nvim/.swp//	" -> System dir 
set undodir=~/.config/nvim/.undo//	" 
set wildmenu			" Display command..
set wildmode=longest:list,full	" Using Tab
set incsearch		        " Search as characters are entered
set hlsearch            	" Highlight matches
setlocal spell 			" Spelling local
set conceallevel=1 		" |
let g:tex_conceal='abdmg' 	" |-> Conceal tex
hi Conceal ctermbg=none 	" |
nnoremap <leader><space> :nohlsearch<CR> " Stop search

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetsDir = "~/.config/nvim/UltiSnips"

" Vimtex Configuration
" This is necessary for VimTeX to load properly. The "indent" is optional.
" Note that most plugin managers will do this automatically.
filetype plugin indent on
" use <tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<c-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#prev(1) : "\<C-j>"

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable

let g:Tex_GotoError = 0
let g:Tex_ShowErrorContext = 0
let g:vimtex_quickfix_mode = 0
