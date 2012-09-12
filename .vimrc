set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

filetype plugin indent on     " required!
"
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

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-haml'


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

" Remove any text (like the '#') before BUNDLE to enable a plugin.
" --------------------------------------------------------------------------
" Generally Useful:
" Bundle: git://github.com/scrooloose/nerdtree.git
" Bundle: git://github.com/vim-scripts/bufexplorer.zip.git
" # Bundle: git://github.com/bronson/vim-closebuffer.git
" # Bundle: git://github.com/vim-scripts/IndexedSearch.git
" # Bundle: git://github.com/bronson/vim-trailing-whitespace.git
" Bundle: git://github.com/Raimondi/YAIFA.git
" # Bundle: git://github.com/tpope/vim-vividchalk.git
" Bundle: git://github.com/ciaranm/inkpot.git
" Bundle: git://github.com/vim-scripts/gitignore.git
"
" #BUNDLE: git://git.wincent.com/command-t.git
" #  If rvm is installed, make sure we compile command-t with the system ruby
" #  BUNDLE-COMMAND: if which rvm >/dev/null 2>&1; then rvm system exec rake make; else rake make; fi

" Programming:
" # Bundle: git://github.com/scrooloose/nerdcommenter.git
" # Bundle: git://github.com/tpope/vim-surround.git
" # Bundle: git://github.com/vim-scripts/taglist.vim
" Bundle: git://github.com/msanders/snipmate.vim.git
" Bundle: git://github.com/scrooloose/snipmate-snippets.git
" # Bundle: git://github.com/vim-scripts/Align.git
" # Bundle: git://github.com/tpope/vim-endwise.git
" # Bundle: git://github.com/tpope/vim-repeat.git
" # Bundle: git://github.com/tpope/vim-fugitive.git
" Bundle: git://github.com/ervandew/supertab.git
" # Bundle: git://github.com/vim-scripts/jQuery.git
" # Bundle: git://github.com/tpope/vim-git.git
" # Bundle: git://github.com/tpope/vim-markdown.git
" # Bundle: git://github.com/timcharper/textile.vim.git
" # Bundle: git://github.com/kchmck/vim-coffee-script.git

" Ruby/Rails Programming:
" Bundle: git://github.com/vim-ruby/vim-ruby.git
" Bundle: git://github.com/tpope/vim-rails.git
" # Bundle: git://github.com/tpope/vim-rake.git
" # Bundle: git://github.com/janx/vim-rubytest.git
" # Bundle: git://github.com/tsaleh/vim-shoulda.git
" # Bundle: git://github.com/tpope/vim-cucumber.git
" Bundle: git://github.com/tpope/vim-haml.git
" # Bundle: git://github.com/astashov/vim-ruby-debugger.git

" Django Programming:
" Bundle: git://github.com/vim-scripts/django.vim.git
" --------------------------------------------------------------------------