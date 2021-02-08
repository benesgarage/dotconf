" Don't be like vi
set nocompatible

" vim will display everything in UTF-8
set encoding=UTF-8

" Show line numbers
set number

" Show cmd being typed
set showcmd

" Syntax highlighting
syntax on

" Markdown code block syntax highlighting
let g:markdown_fenced_languages = ['python', 'php', 'html', 'c']

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" required by Vundle plug-in manager
filetype off

call vundle#begin()

" Required by plug-in manager
Plugin 'VundleVim/Vundle.vim'

" Python auto-complete
Plugin 'davidhalter/jedi-vim'

" Vimwiki
Plugin 'vimwiki/vimwiki'

" nerdtree
Plugin 'preservim/nerdtree'

call vundle#end()

" File type detection 
filetype plugin indent on

" pwd is always the current file's directory
autocmd BufEnter * lcd %:p:h

"
" Plugin-specific configuration
"

" Force vimwiki to use MD
let g:vimwiki_list = [{'path': '~/vimwiki/','syntax': 'markdown','ext': '.md'}]

" Always open NERDTree if no file specified
autocmd vimenter * if !argc() | NERDTree | endif

"
" Mappings
"

" Convert MD to PDF
autocmd FileType markdown nnoremap <buffer> <leader>pdf :exec '!mkdir -p ~/vim-output && pandoc % --pdf-engine=xelatex -o ~/vim-output/file.pdf -V geometry:margin=0.7in'<CR>

" Convert MD to HTML5
autocmd FileType markdown nnoremap <buffer> <leader>html :exec '!mkdir -p ~/vim-output && mkdir -p ~/vim-output/css && pandoc -s -f markdown -t html5 -o ~/vim-output/file.html -c ~/vim-output/css/bootstrap.min.css %'<CR>

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
