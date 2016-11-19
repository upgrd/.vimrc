"____vundle section____ 

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"*** PLUGIN section ****
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'othree/xml.vim'
Plugin 'scrooloose/nerdtree'

"snipmate from https://github.com/garbas/vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

  " Optional:
Plugin 'honza/vim-snippets'

"easymotion from https://github.com/easymotion/vim-easymotion
Plugin 'easymotion/vim-easymotion'

"_____vim bufferline (https://github.com/bling/vim-bufferline)
Plugin 'bling/vim-bufferline'

"syntastic from https://github.com/vim-syntastic/syntastic
Plugin 'vim-syntastic/syntastic'

"youcompleteme from https://valloric.github.io/YouCompleteMe/#ubuntu-linux-x64
Plugin 'Valloric/YouCompleteMe'

"rdf syntax from https://github.com/niklasl/vim-rdf
Plugin 'niklasl/vim-rdf'

"window swap from https://github.com/wesQ3/vim-windowswap
Plugin 'wesQ3/vim-windowswap'

"emmet-like plugin from https://github.com/mattn/emmet-vim
Plugin 'mattn/emmet-vim'

"fugitive git wrapper
Plugin 'tpope/vim-fugitive'

"ctrl-p
Plugin 'kien/ctrlp.vim'

"multi curser from https://github.com/terryma/vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required

"____basic setup_____ (http://www.makeuseof.com/tag/5-things-need-put-vim-config-file/)

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"set textwidth=80
set clipboard=unnamed
"activate omnifunc
set omnifunc=syntaxcomplete#Complete

colorscheme monokai 

"basic setup for syntastic from https://github.com/vim-syntastic/syntastic#settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}

set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"____wordprocessor mode____ (http://www.makeuseof.com/tag/5-things-need-put-vim-config-file/)


func! WordProcessorMode()
 setlocal textwidth=80
 setlocal smartindent
 setlocal spell spelllang=en_us
 setlocal noexpandtab
endfu

com! WP call WordProcessorMode()

"____hybrid numbering mode____ (http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/)
" *** DEPRECATED *** use RltvNumber instead (= rel + abs numbers!) (http://www.vim.org/scripts/script.php?script_id=2351)
"set relativenumber AND absolute number!
autocmd VimEnter * RltvNmbr
" solution for calling Rltv after .vimrc has loaded: http://stackoverflow.com/questions/6821033/vim-how-to-run-a-command-immediately-when-starting-vim
set number

"syntax always on

syntax on

"____enable airline (solution from https://github.com/vim-airline/vim-airline/issues/130)
set laststatus=2

"____ft enabled____

:filetype on
filetype plugin on
filetype indent on

"____mappings____

 "____new line mapping____(http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode)

nmap <Enter> o<Esc>
nmap <S-Enter> O<Esc>
nmap <C-Enter> o<Esc>k
nmap <C-S-Enter< O<Esc>j
