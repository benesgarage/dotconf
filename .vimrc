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

call vundle#end()

" File type detection 
filetype plugin indent on

" Force vimwiki to use MD
let g:vimwiki_list = [{'path': '~/vimwiki/','syntax': 'markdown','ext': '.md'}]
