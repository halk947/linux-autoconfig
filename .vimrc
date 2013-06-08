" Author: Tanky Woo
" Blog: www.wutianqi.com

""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""
set nu		" set the line number
syntax on	" syntax highlighting
set autochdir	" set the current dir as thr work dir
set hlsearch	" highlight the search result
set incsearch	" real-time search
"filetype on	" file type detection
"filetype plugin on " loading the plugin files for specific file types
"filetype indent on " loading the indent file for specific file types with
set foldmethod=indent " The kind of folding used for the current window 
set foldlevel=99
set nocompatible " use the vim's keyboard setting, not vi
set cindent
set autoindent " Copy indent from current line when starting a new line
set shiftwidth=4
set tabstop=4
set softtabstop=4
"set expandtab " use the space to instead of tab TODO
set smartindent
set showmatch		" 
set showmode		" show the mode
"set cursorline		" highlighter the current line
set nobackup		" no backup
" hi cursorline   gui=UNDERLINE cterm=UNDERLINE
set cc=81		" short for colorcolumn
colorscheme desert
set fileencodings=utf-8,gb18030,cp936,big5 " set the encode
set t_Co=256 " if under tty, use 256
set pastetoggle=<F11>
set list
set listchars=tab:>-,trail:.
nmap <leader>l :set list!<CR>
""hi NonText ctermfg=247 guifg=#a73111 cterm=bold gui=bold
""hi SpecialKey ctermfg=77 guifg=#654321

"==========================
" Plugins Configuration
" TagList
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
" PyDiction
let g:pydiction_location = '/home/tankywoo/.vim/bundle/Pydiction/complete-dict'
let g:pydiction_menu_height = 10


""""""""""""""""""""""""""""
" VimWiki Plugin
""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '/home/tankywoo/wiki/',
            \ 'path_html': '/home/tankywoo/wiki/html/',
            \ 'template_path': '/home/tankywoo/wiki/html/template/',
            \ 'template_default': 'template',
            \ 'template_ext': '.html',
            \ 'nested_syntaxes' : {'python': 'python', 'c++': 'cpp', 'shell': 'shell'}}]
let g:vimwiki_camel_case = 0
let g:vimwiki_list_ignore_newline = 0
" 个人喜欢utf-8，要换的话下面模板中编码也要改
"set encoding=utf-8
map <F4> <Plug>Vimwiki2HTML
map <S-F4> <Plug>VimwikiAll2HTML


""""""""""""""""""""""""""""
" Auto add the head by .py file
""""""""""""""""""""""""""""
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1,  "# -*- coding: utf-8 -*-")
    call append(2,  "# wutq@" . strftime('%Y-%m-%d', localtime()))
    "call append(3,  "# vim: set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4:")
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

""""""""""""""""""""""""""""
" Auto add the head by .sh file
""""""""""""""""""""""""""""
function HeaderBash()
    call setline(1, "#!/bin/bash")
    call append(1,  "# Tanky Woo@" . strftime('%Y-%m-%d %T', localtime()))
    call append(2,  "# About: ")
    "call append(3,  "# vim: set noexpandtab tabstop=4 shiftwidth=4 softtabstop=4:")
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

"============================
" Bundle Configuration
"============================
""set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'kevinw/pyflakes-vim'

" vim-scripts repos
Bundle 'vimwiki'
Bundle 'taglist.vim'
Bundle 'snipMate'
Bundle 'ZenCoding.vim'
Bundle 'desert256.vim'
Bundle 'Tabular'
"Bundle 'AutoClose'
Bundle 'Auto-Pairs'
Bundle 'Pydiction'
Bundle 'The-NERD-tree'
Bundle 'SuperTab-continued.'



" non github repos


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
