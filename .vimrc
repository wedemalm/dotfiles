set nocompatible		" be iMproved, required
filetype off			" required

" set runtime path to include Vundle initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'haya14busa/incsearch.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()		"required
filetype plugin indent on 	"required

syntax on

set t_Co=16

hi Visual ctermfg=2 ctermbg=4
hi Constant ctermfg=1
hi Search ctermfg=2 ctermbg=4
hi Special ctermfg=2

"highlight Comment ctermbg=1
"highlight Constant ctermbg=1
"highlight Normal ctermbg=1
"highlight NonText ctermbg=1
"highlight Special ctermbg=1
"highlight Cursor ctermbg=1

set relativenumber
set number
set showcmd
set ts=2
set shiftwidth=2

nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

map  / <Plug>(incsearch-forward)
map  ? <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map  n <Plug>(incsearch-nohl-n)
map  N <Plug>(incsearch-nohl-N)
map  * <Plug>(incsearch-nohl-*)
map  # <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltisnipsJumForwardTrigger="<c-j>"
let g:UltisnipsJumBackwardTrigger="<c-k>"

let g:ycm_autoclose_preview_window_after_insertion = 1
