syntax enable
colorscheme seoul256
set cursorline

execute pathogen#infect()
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
let g:ctrlp_custom_ignore='node_modules\|vendor\|.git'
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
" set expandtab
set title
set backup
set backupdir=~/.vim/backup//
set backupskip=/tmp*
set directory=~/.vim/backup//
set writebackup

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

map <Esc>[B <Down>

if &term =~ '^screen'
	" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

set wildmenu
set wildmode=full
