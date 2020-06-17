syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=black

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox' 
Plug 'vim-utils/vim-man'
Plug 'git@github.com:ctrlpvim/ctrlp.vim.git'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
call plug#end()

colorscheme gruvbox
set background=dark

let g:gruvbox_contrast_dark = "hard"

if executable('rg')
    let g:rg_derive_root='true'
endif

nnoremap <F5> :UndotreeToggle<cr>
let mapleader = " "

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 25<CR>

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

" Newline sin ingresar al modo insert
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>





