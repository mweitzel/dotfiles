" set encoding so 'lcs' works properly
scriptencoding utf-8
set encoding=utf-8      " nobomb " learn what nobomb does here

" insert mode backspace works like most editors
set backspace=indent,eol,start
" line numbers
set nu
" relative line numbers
set rnu
" highlight syntax
syntax on
" highlight search
set hlsearch
" ignore cases in search
set ignorecase
" dynamically highlight as search is typed
set incsearch
" Highlight current line
set cursorline

" Make tabs as wide as two spaces
set tabstop=2
" Make [ctr-v,>] use the two spaces
set shiftwidth=2
" Spaces instead of tabs
set expandtab

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

if has("autocmd")
  " fire!
  autocmd BufWritePost * silent ! firetower -r
endif

" go fast? you should really learn what this does
set ttyfast
set lazyredraw

" give cursor breathing room
set scrolloff=3

function! FullscreenWindow()
  :exe "normal \<C-W>_\<C-W>|"
endfunction

function! PickBuffer()
  :redir @b
  :silent buffers
  :redir END
  :enew!
  setlocal buftype=nofile
  :exe 'normal "bp'
  :%! cut -d'"' -f2 | grep -vE '$^' | sort
endfunction

nnoremap <leader>f :call FullscreenWindow()<cr>
nnoremap <leader>b :buffers<cr>
nnoremap <leader>g :call PickBuffer()<cr>
