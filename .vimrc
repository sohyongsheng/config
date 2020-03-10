syntax on
colorscheme desert

" Spaces and tabs
set tabstop=4 " Number of spaces each tab visually takes. 
set softtabstop=4 " Number of spaces each tab takes in edit mode.
set expandtab " Tabs become spaces.
set shiftwidth=4 "Number of spaces auto-indent makes

" User interface
set number " Show line numbers.
filetype indent plugin on " Load file-type specific indent and files.
set autoindent " Copies indentation from previous line.
set showmatch " Highlight matching brackets.
set wildmenu " Command line completion, try typing doing :color <tab> in command line to see all possible colors.
set mouse=a " Enable mouse for all (abbreviated as 'a') modes.
set laststatus=2 " Set status bar to show if file is saved or not.
highlight statusline ctermbg=0 ctermfg=0
set hlsearch " Highlight search.
highlight Pmenu ctermbg=0 ctermfg=7
highlight PmenuSel ctermbg=6 ctermfg=7
set incsearch " Incrementally highlight as we search.
set relativenumber " Set relative line numbers.

" Git commits
au FileType gitcommit set tw=72

" Yanking and pasting
set clipboard=unnamed " Allows you to yank in one window and paste into another window. 

" Add following characters for text objects.
for s:char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%', '$' ]
    execute 'xnoremap i' . s:char . ' :<C-u>normal! T' . s:char . 'vt' . s:char . '<CR>'
    execute 'onoremap i' . s:char . ' :normal vi' . s:char . '<CR>'
    execute 'xnoremap a' . s:char . ' :<C-u>normal! F' . s:char . 'vf' . s:char . '<CR>'
    execute 'onoremap a' . s:char . ' :normal va' . s:char . '<CR>'
endfor

:inoremap jk <Esc>

