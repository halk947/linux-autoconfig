" Author: Tanky Woo
" Blog: www.wutianqi.com

""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""
set nu		" set the line number
syntax on		" syntax highlighting
set autochdir		" set the current dir as thr work dir
set hlsearch		" highlight the search result
set incsearch       	" real-time search
filetype on			" file type detection
filetype plugin on	" loading the plugin files for specific file types
filetype indent on	" loading the indent file for specific file types with
set foldmethod=indent       " The kind of folding used for the current window 
set foldlevel=99
set nocompatible		" use the vim's keyboard setting, not vi
set cindent
set autoindent		" Copy indent from current line when starting a new line
set shiftwidth=4
set tabstop=4
set softtabstop=4
"set expandtab   " use the space to instead of tab
set smartindent
set showmatch		" 
set showmode		" show the mode
"set cursorline		" highlighter the current line
set nobackup		" no backup
" hi cursorline   gui=UNDERLINE cterm=UNDERLINE
set cc=81		" short for colorcolumn
colorscheme desert
set fileencodings=utf-8,gb18030,cp936,big5		" set the encode
set t_Co=256 " if under tty, use 256
let Tlist_Show_One_File=1	"TagList
let Tlist_Exit_OnlyWindow=1
""""""""""""""""""""""""""""
" VimWiki Plugin
""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '/home/tankywoo/wiki/',
            \ 'path_html': '/home/tankywoo/wiki/html/',
            \ 'template_path': '/home/tankywoo/wiki/html/template/',
            \ 'template_default': 'template',
            \ 'template_ext': '.html',
			\ 'nested_syntaxes' : {'python': 'python', 'c++': 'cpp'}}]
let g:vimwiki_camel_case = 0
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
