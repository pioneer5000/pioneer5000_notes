"
"==================================================
"
" .vimrc 
"
"==================================================


" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible



"==================================================
" Syntax Highlighting / File Type
"==================================================
"
" Turn syntax highlighting On
syntax on
" Detect files with extension .md as Markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
" Ignore highlighting underscore if syntax is Markdown
autocmd Syntax * syn match markdownIgnore "_"


"==================================================
" Basic config
"==================================================

set number               "show line numbers
set ruler                "show the cursor position all the time
set wrap                 "always wrap long lines
set history=500          "set vim to remember last 500 commands
set hlsearch             "higlight search results
set incsearch            "set incremental search
set ignorecase           "ignore case when searching
set tabstop=4            "number of spaces that a <Tab> in the file counts for.
set noerrorbells         "turn off error bells
set vb t_vb=             "turn off bells
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set listchars=tab:▸\ ,eol:¬     "set chars for tabs and end of line
set list                        "turn on list so that list chars displays


"==================================================
" Fonts
"==================================================
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_gtk3")
    set guifont=Inconsolata\ 12
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif


"==================================================
" Colours
"==================================================
set background=dark
set t_Co=256
:colorscheme molokai "set colourscheme


"==================================================
" Plugins
"==================================================

" Powerline
set laststatus=2 " Always display the statusline in all windows
"set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)










