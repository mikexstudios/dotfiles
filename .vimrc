set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


" Now you have a working Vim setup.  Customize everything from here on.

" --------------------------------------------------------------------------
" Don't create *.ext~ backup files.
set nobackup    " No backup files.
set nowritebackup    " No backup files during editing.

set nowrap
" set textwidth=78

" Tab settings (for python)
set tabstop=4    " 4-space indents.
set shiftwidth=4    " Allow use of < and > in visual mode to block
                    " indent/unindent.
set expandtab    " Use spaces instead of <TAB> character.
set softtabstop=4    " Backspace deletes 4 spaces (views it as a tab).
set autoindent    " Indents should match that of previous line.
 
" Make auto complete a bit more bash-like
" set completeopt=longest,menu,preview

" set scrolloff=999 " makes cursor always at center of screen
" set ruler		" show the cursor position all the time

" set some directives...
syntax on
set nocompatible
set incsearch         " find the next match as we type the search
set hlsearch          " hilight searches by default
" etc.  http://github.com/bronson/vimsy/blob/master/vimrc is one example
" --------------------------------------------------------------------------
 
" --------------------------------------------------------------------------
"  vundle bundles:
Bundle 'ciaranm/inkpot'
Bundle 'Raimondi/YAIFA'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
nmap <leader>t :CtrlP<CR>
nmap <leader>b :CtrlPClearCache<CR>

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'
Bundle 'vim-scripts/bats.vim'

Bundle 'jcfaria/Vim-R-plugin'
let vimrplugin_underscore = 0 "disable _ convert to <-
" --------------------------------------------------------------------------


"" --------------------------------------------------------------------------
"" For latex-vim:
"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*
"
"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'
"
"" Fix viewing error:
"let g:Tex_ViewRule_pdf = 'open -a Preview.app'
"" --------------------------------------------------------------------------

"" --------------------------------------------------------------------------
"" For NERDTree:
"if exists('g:loaded_nerd_tree')
"  map <Leader>n :NERDTreeToggle<CR>
"end
"" --------------------------------------------------------------------------
