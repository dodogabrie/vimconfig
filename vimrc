" VIMRC di Edoardo 
" Vundle begin
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'morhetz/gruvbox'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'ycm-core/YouCompleteMe'
"Plugin 'ervandew/supertab'
Plugin 'lervag/vimtex'
Plugin 'KeitaNakamura/tex-conceal.vim'
" Vundle end
call vundle#end()            " required
filetype plugin indent on    " required

" Setting
set background=dark
colorscheme gruvbox
syntax on			" Show syntax
set showmode			" Show modality
set noerrorbells 		" No sound
set showcmd			" Show command
set number			" line number
set autoindent			" autoindentation
set shiftwidth=4		" deep of autoin.
set wrap linebreak nolist 	" not hard wrap
set spell spelllang=it,en_us	" Spell
set backupdir=~/.vim/.backup//	" |
set directory=~/.vim/.swp//	" |-> System dir 
set undodir=~/.vim/.undo//	" |
set wildmenu			" Display command..
set wildmode=longest:list,full	" Using Tab
set incsearch		        " Search as characters are entered
set hlsearch            	" Highlight matches
set foldmethod=manual 		" Useless folding
setlocal spell 			" Spelling local
set conceallevel=1 		" |
let g:tex_conceal='abdmg' 	" |-> Conceal tex
hi Conceal ctermbg=none 	" |

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" latex enviroenment
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
let g:UltiSnipsSnippetsDir = "~/.vim/UltiSnips"

" Remap
nnoremap <leader><space> :nohlsearch<CR> " Stop search
nnoremap <leader>s :mksession<CR> 	 " Save session
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/../figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/../figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>
