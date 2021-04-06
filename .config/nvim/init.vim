se mouse=a
set number
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set noshowmode
set laststatus=2
set backspace=indent,eol,start

call plug#begin('~/.config/nvim')

Plug 'dikiaap/minimalist'
Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'christoomey/vim-tmux-navigator'

" Themes
Plug 'dracula/vim', { 'as': 'dracula'  }
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion'

call plug#end()

"Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-reference)


noremap <c-s-down> ddp
noremap <c-s-up> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>

let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t <Plug>(NERDTree)
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>t :NERDTree<CR>



colorscheme gruvbox
syntax on
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
