filetype plugin indent on
syntax enable

set hlsearch
set incsearch
set autoindent
set belloff=all
set tabstop=4
set shiftwidth=4
set title
set backup
set backupdir=~/.vim/backup//
set backupskip=/tmp*
set directory=~/.vim/backup//
set writebackup
set mouse=a
set wildmenu
set wildmode=full
set shell=/bin/sh

cnoreabbrev W w

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <F5> i**<C-r>=strftime('%A %d %B %Y %r')<cr>**<cr>
nnoremap <C-l> :nohlsearch<CR>
vnoremap <C-c> "+y
inoremap <C-p> <C-o>"+p
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

highlight TrailingWhitespace ctermbg=darkgray guibg=darkgray
match TrailingWhitespace /\s\+$\| \+\ze\t/

execute pathogen#infect()

let g:seoul256_background = 235
colorscheme seoul256

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

if &term =~ '^screen'
	" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif
