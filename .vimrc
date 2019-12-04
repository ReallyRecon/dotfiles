set nocompatible              " required
filetype off                  " required

let python_highlight_all=1
syntax on
set nu

" Indentation in Java
set autoindent
set si
set shiftwidth=4

" F2 for quick buffer management
:nnoremap <F2> :buffers<CR>:buffer<Space>

" F3 to open shell
:nnoremap <F3> :below<Space>terminal<Space>++rows=12<CR>

" Easy split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTREE
nmap \e :NERDTreeToggle<CR>

" Pathogen
execute pathogen#infect()

" Default installed Mono instead of embedded
let g:OmniSharp_server_use_mono = 1

" Template load - source: ~/.vim/skeleton
au BufNewFile * silent! 0r ~/.vim/skeleton/template.%:e

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of second to blink when matching brackets
set mat=2

" Add a bit of extra margin to the left
set foldcolumn=1

" UTF-8 Support
set encoding=utf-8

" YCM Customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'dhruvasagar/vim-table-mode'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
