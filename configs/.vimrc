" Plugins
filetype plugin indent on


" Syntax
syntax on
colorscheme desert


" Numero das linhas
set relativenumber
set number


" Tab e indentacao
" Padrao:
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" ASM diferente
autocmd BufRead,BufNewFile *.asm set filetype=asm

augroup asm_indent
    autocmd!
    autocmd FileType asm setlocal tabstop=8 shiftwidth=8 softtabstop=8 noexpandtab
augroup END

set smarttab
set autoindent


" Encontrar texto
set showcmd
set incsearch
set hlsearch
set ignorecase
set smartcase


" Backup
set backup
set writebackup

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

for dir in ['backup', 'swap', 'undo']
  call mkdir($HOME . '/.vim/' . dir, 'p')
endfor
