call plug#begin('~/.local/share/nvim/plugged')

" Visual
Plug 'joshdick/onedark.vim' " Tema
Plug 'tomasr/molokai'
Plug 'sainnhe/sonokai'
Plug 'kamykn/dark-theme.vim'

" Airline
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Temas Airline

" Explorador de Archivos
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" GitLens
Plug 'APZelos/blamer.nvim'

" Guia de indentacion
Plug 'Yggdroot/indentLine'

" Sintaxis del codigo
Plug 'sheerun/vim-polyglot'

" Herrramientas para lenguajes
" Golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Kotlin
Plug 'udalov/kotlin-vim'

" AutoCompletado del Codigo
Plug 'neoclide/coc.nvim'
" Plug 'codota/tabnine-vim'
" Comentar
Plug 'preservim/nerdcommenter'

" Pares de Comillas y parentesis
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'

" Buscador de Archivos
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Moverse entre Buffers
Plug 'christoomey/vim-tmux-navigator'

" Iconos
Plug 'ryanoasis/vim-devicons'

call plug#end()

let mapleader = " "

" Configuraciones del editor
set number
set title
set relativenumber
set ignorecase
set mouse=a
set encoding=UTF-8
" set paste " Causa problemas con autopairs

" Configuracion del tema
set termguicolors
colorscheme darktheme
syntax enable
" highlight Normal guibg=none
" highlight NonText guibg=none


" Configuracion de Airline
let g:airline#extensions#tabline#enabled = 1 " Mostrar buffers abiertos
let g:airline#extensions#tablines#fnamemod = ':t' " Mostrar nombre del archivo
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
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

" Configuracion GitLens
let g:blamer_enabled = 1
let g:blamer_show_in_visual_modes = 0
let g:blamer_delay = 500
let g:blamer_relative_time = 1
let g:blamer_prefix = ' >>> '
highlight Blamer guifg=aquamarine

" Configuracion para Blade Templates
let g:coc_filetype_map = {
      \ 'blade': 'html',
      \ }

" Configuracion para nerdcommenter
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1


" Mapeos NERDTree
nnoremap <leader>nt :NERDTree<CR>

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
nnoremap <leader>ft gg=G<CR>
nnoremap <leader>b :Buffers<CR>
