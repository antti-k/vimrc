" vim-plug
call plug#begin('~/.vim/plugged/')

" Colorschemes
Plug 'jacoborus/tender.vim'
Plug 'crusoexia/vim-monokai'
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
colorscheme tender

set nu
set cursorline
set showmatch
set hls

set shiftwidth=4
set tabstop=2
set softtabstop=2

" Enable expandtab for spaces or noexpandtab for tabs
set expandtab
" set noexpandtab

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

" netrw
nnoremap <Leader>d :Explore<CR>
nnoremap <Leader>D :Sexplore<CR>

" PLUGINS
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
