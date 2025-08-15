set nocompatible	"required
filetype off		"required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" all plugins here:
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" all plugins before this line

set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=79 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |

set background=dark

au BufNewFile,BufRead *.c, *.h, *.o
	\ set termencoding=utf-8 |
	\ set tabstop=4 |
	\ set shiftwidth =4 |
	\ set expandtab |
	\ set textwidth=120 |

" show trailing whitespace and space befor a tab
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$\| \+\ze\t/
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

set encoding=utf-8
set number

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"	project_base_dir = os.environ['VIRTUAL_ENV']
"	activate_this = os.path.join(project_base_dir, 'bin/activate')
"	exec(activate_this, dict(__file__=activate_this))
"EOF

let python_highlight_all=1
syntax on

let NERDTreeIgnore=['\.pyc$', '\~$']  "ignore file in Nerdtree


call vundle#end()
filetype plugin indent on


