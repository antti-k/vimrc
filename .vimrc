" vim-plug
call plug#begin('~/.vim/plugged/')

" Colorschemes
Plug 'jacoborus/tender.vim'
Plug 'crusoexia/vim-monokai'
" Powerline
Plug 'powerline/powerline'
" NERDTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" ack
Plug 'mileszs/ack.vim'
" JavaScript and JSX highlighting
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
" Asynchronous Lint Engine
Plug 'w0rp/ale'

call plug#end()

syntax enable
colorscheme monokai

set nu
set cursorline
set showmatch
set shiftwidth=2
set tabstop=2
set softtabstop=2
set hls
" set expandtab

"Exit insert mode with jk
imap jk <esc>
" Set leader to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" Jump to next capital letter (useful with camelCases)
nnoremap <Leader>c /\u<CR>
nnoremap <Leader>C ?\u<CR>

" Buffers
nnoremap <Leader>M :bp<CR>
nnoremap <Leader>m :bn<CR>

" PLUGINS
" NERDTree
nnoremap <Leader>d :NERDTree<CR>
" fzf
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>g :GFiles<CR>
nnoremap <Leader>b :Buffers<CR>
" ALE
nnoremap <Leader>l :ALEToggle<CR>
nnoremap <Leader>L :ALEFix<space>

"Set ag as the engine for ack.vim
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
