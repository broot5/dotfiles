call plug#begin('~/.local/share/nvim/plugged')
" Editor
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Theme
Plug 'gruvbox-community/gruvbox'

Plug 'kien/rainbow_parentheses.vim'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/limelight.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'roman/golden-ratio'
call plug#end()

syntax on
filetype plugin indent on

" Set theme
colorscheme gruvbox

let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.component_raw = {'buffers': 1}


let g:lightline#bufferline#clickable = 1

" Syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Always On Better Rainbow Parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Press Shift-K to show documention
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Set Ctrl + @ to copy
nnoremap <C-@> :call system("wl-copy", @")<CR>

" Set windmove
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Set tab control
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>x :tabclose<CR>
nnoremap <leader>h <C-PageUp>
nnoremap <leader>l <C-PageDown>

" <F5> to insert now time
nnoremap <F5> "=strftime("%c")<CR>P
inoremap <F5> <C-R>=strftime("%c")<CR>

" <C-p> to FZF
nnoremap <C-p> :FZF<Cr>

" Set indentLine
let g:indentLine_char = '¦'

set autoindent
set autoread
set background=dark
set cindent
set cursorline
set expandtab
set hidden
set ignorecase
set laststatus=2
set mouse=a
set nobackup
set noshowmode
set nowritebackup
set number
set ruler
set shiftwidth=4
set showmatch
set showtabline=2
set signcolumn=yes
set smartcase
set smartindent
set syntax
set tabstop=4
set termguicolors
set updatetime=300

