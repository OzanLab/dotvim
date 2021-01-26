call plug#begin('~/.vim/pluged')
Plug 'StanAngeloff/php.vim'
Plug 'mattn/emmet-vim'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-liquid'
Plug 'lumiliet/vim-twig'
call plug#end()

" Colorscheme setting
colorscheme vim-monokai-tasty
let g:lightline = { 'colorscheme': 'monokai_tasty' }  " lightline theme

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set number
set mouse=a

" Delete the current line"
nmap - dd

" To save with simply Ctrl+s
nmap <c-s> :w<CR> 
imap <c-s> <Esc>:w<CR>a

" DIY autoclosing
inoremap (; ();<left><left>
inoremap [; [];<left><left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<cr> {<cr>}<esc>O
inoremap (<cr> (<cr>)<esc>O
inoremap [<cr> [<cr>]<esc>O
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
inoremap <? <?php<Space>
inoremap <?= <?php echo<Space>

" Alt j/k to move to the tab to the left/right
noremap <A-j> gT
noremap <A-k> gt

" Layouting
set laststatus=2
set statusline=
set statusline+=%-3.3n\
set statusline+=%f\
set statusline+=%h%m%r%w
set statusline+=\[%{strlen(&ft)?&ft:'none'}]
set statusline+=%=

" Show autocomplete menus
set wildmenu

" Show editing mode
set showmode

" Don't write swap file
set noswapfile
