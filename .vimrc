let s:editor_root=expand("~/.vim")

set nocompatible "be Improved, required for Vundle
filetype off 	 "required for Vundle

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin("~/.vim/bundle")


" let Vundle manage Vundle, required for Vundle
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-startify'
Plugin 'ctrlp.vim'
Plugin 'YouCompleteMe'
Plugin 'YCM-Generator'
Plugin 'vim-easy-align'
Plugin 'nerdtree'
Plugin 'vim-trailing-whitespace'
Plugin 'incsearch.vim'
Plugin 'delimitMate'

"All of your Plugins must be added before the following line
call vundle#end()            " required for Vundle
filetype plugin indent on    " required for Vundle

set relativenumber
set number
set ruler
set shiftwidth=2
set tabstop=2

"Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
"set hilight options
hi MatchParen cterm=none ctermbg=14 ctermfg=15
hi Visual cterm=none ctermbg=1 ctermfg=2

"Startify-options
let g:startify_bookmarks = ['~/.vimrc']
hi StartifyFile ctermfg=15

let g:startify_custom_header = [
			\ '                          ___			',
			\ '                       .-"-~-"-.			',
			\ '                      /.-"-.-"-.\		',
			\ '                      ||((o|o))||		',
			\ '                      )\__/V\__/(		',
			\ '                     / ~ -...- ~ \		',
			\ '                    |\` ~. ~ .~ `/|		',
			\ '                 () | `~ - ^ - ~` |		',
			\ '             () //  | ; ''    :  . |		',
			\ '            ()\\/_() \ . :    ; ''/		',
			\ '           ___/ /_____''.   ; '' . ____	',
			\ '                 _   ^ `uu---uu`    /\	',
			\ '          _____________^ _________^_\/	',
			\ '                       \ \				',
			\ '                       //\\()			',
			\ '                     ()/  ()				',
			\ '                      ()					',
			\ '',
			\ '',
			\ ]

autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | Startify | endif

"using 16bit colors
set t_Co=16
set nocompatible
syntax enable
set background=dark

"Ctrl-P
let g:ctrlp_show_hidden = 1

"Easy-Align
vmap <Enter> <Plug>(EasyAlign)

"incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
set hlsearch
"let g:incsearch#auto_nohlsearch = 1
set ignorecase

"YCM
let g:ycm_autoclose_preview_window_after_completion = 1
