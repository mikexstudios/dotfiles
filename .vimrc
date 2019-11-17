set nocompatible " use VIM

" vim-plug. Use single quotes. :PlugInstall to install.
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'ciaranm/inkpot'
Plug 'tpope/vim-commentary'
Plug 'lifepillar/vim-mucomplete'
call plug#end()
" Automatically set by plug#end()
" filetype plugin indent on " load plugins based on detected filetype
" syntax enable " syntax highlighting

" Base editor
set nowrap
set number
highlight LineNr ctermfg=grey
set colorcolumn=80,100
highlight colorcolumn ctermbg=grey guibg=grey

" Indent and tab
set autoindent " indent according to previous line
set expandtab " use spaces instead of tabs
set softtabstop=2 " tab key indents by given spaces
set shiftwidth=2 " >> indents by given spaces

" Backup
set nobackup " no backup files
set nowritebackup " no backup files during editing

" Search
set incsearch " highlight while searching with / or ?.
set hlsearch " keep matches highlighted.

" mucomplete
set completeopt+=menuone
set completeopt+=noselect
let g:mucomplete#enable_auto_at_startup=1
