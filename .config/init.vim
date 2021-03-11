" Editor stuff
set nu
set cursorline
syntax enable
set nocompatible
set smartindent
set noswapfile
set noshowmode
set shiftwidth=2
set tabstop=2
set clipboard=unnamedplus
set laststatus=0
" KB mappings
let mapleader = " "
map Q <nop>
inoremap jj <ESC>
" Run on exit
autocmd BufWritePost * set noet|retab!
autocmd BufWritePost Xresources !xrdb %
autocmd BufWritePost * %s/\s\+$//e
" Colorscheme
colorscheme gruvbox 
" set termguicolors
set t_Co=256
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
" YCM
set encoding=utf-8
" Startup Screen
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1
let g:startify_bookmarks = [
	\ '~/Documents',
	\ '~/voidrice',
	\ '~/.config',
	\ ]
let g:startify_lists = [
		\ { 'type': 'files',		 'header': ['		Files']			 },
		\ { 'type': 'dir',		 'header': ['		Current Directory '. getcwd()] },
		\ { 'type': 'sessions',  'header': ['		Sessions']			 },
		\ { 'type': 'bookmarks', 'header': ['		Bookmarks']			 },
		\ ]
let g:startify_custom_header = [
	\ '	GNU Emacs, An extensible, customizable, free/libre text editor -- and more.',
	\]
