source /home/andrewSP/voidrice/.config/color.vim
" Editor stuff
set nu
set cursorline
syntax enable
set nocompatible
set smartindent
set noswapfile
set noshowmode
set shiftwidth=8
set tabstop=8
set clipboard=unnamedplus
" KB mappings
let mapleader = " "
map Q <nop>
inoremap jj <ESC>
" Run on exit
autocmd BufWritePost * set noet|retab!
autocmd BufWritePost Xresources !xrdb %
autocmd BufWritePost * %s/\s\+$//e
" Colorscheme
set termguicolors
set t_Co=256
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
" Statusbar
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
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
