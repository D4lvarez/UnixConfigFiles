call plug#begin('~/.local/share/nvim/plugged')

" Visual
Plug 'joshdick/onedark.vim' " Tema
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Temas Airline

" Explorador de Archivos
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Guia de indentacion
Plug 'Yggdroot/indentLine'

" Sintaxis del codigo
Plug 'sheerun/vim-polyglot'

" AutoCompletado del Codigo
Plug 'neoclide/coc.nvim'

" Pares de Comillas y parentesis
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Buscador de Archivos
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Moverse entre Buffers
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

let mapleader = " "

" Configuraciones del editor
set number
set title
set relativenumber
set ignorecase
set mouse=a
" set paste " Causa problemas con autopairs

" Configuracion del tema
set termguicolors
colorscheme onedark
highlight Normal guibg=none
highlight NonText guibg=none

" Configuracion de Airline
let g:airline#extensions#tabline#enabled = 1 " Mostrar buffers abiertos
let g:airline#extensions#tablines#fnamemod = ':t' " Mostrar nombre del archivo
let g:airline_powerline_fonts = 1
set noshowmode

" Configuracion IndenLine
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Configuracion de FZF
let g:fzf_history_dir = '~/.local/share/fzf-history'

" AutoClose Tag
let g:closetag_filenames = '*.html,*.js,*.jsx,*.ts,*.tsx'
let g:closetag_filetypes = 'html, xhtml, phtml'
let g:closetag_xhtml_filetypes = 'xhtml, jsx'

" Configuracion NERDTree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1

" Mapeos NERDTree
nnoremap <leader>nt :NERDTree<CR>

" Configuracion de archivos .py
" autocmd FileType python set tabstop=4
" autocmd FileType python set shiftwidth=4

" Mapeos
nnoremap <leader>, :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>i :PlugInstall<CR>
nnoremap <leader>cls :PlugClean<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>
