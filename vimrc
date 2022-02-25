set nocompatible	" be iMproved, required
filetype plugin indent on " let filetypes do their own things

" Set UTF-8 encoding
set encoding=utf-8
set fileencoding=utf-8

" show line numbers
set number

" disable bells
set belloff=all

" statusline
set laststatus=2                        " always on
set statusline=                         " start from scratch
set statusline+=\ %n                    " buffer number
set statusline+=\ %<%F                  " full file path, truncated
set statusline+=%m                      " modified flag
set statusline+=\ \|\ %Y                " filetype
set statusline+=\ \|\ %{&fileformat}    " line break type
set statusline+=\ \|\ %{&fileencoding}  " file encoding (utf-8, pls)
set statusline+=%=%10((%l,%c)%)         " (line, column) coordinates

" highlight slash searches
set hlsearch

" make sure backspace always works on Mac
set backspace=indent,eol,start

" turn on syntax highlighting
syntax on

" use the default colorscheme because the rest are *~*bad*~*
" GUIs can override this if they want
colorscheme default

" CUSTOM MAPPINGS GO AT THE BOTTOM

" Escape mapping
:imap jk <Esc>
:imap kj <Esc>

" Single character insertion
function! RepeatChar(char, count)
  return repeat(a:char, a:count)
endfunction
nnoremap s :<C-U>exec "normal i".RepeatChar(nr2char(getchar()), v:count1)<CR>
nnoremap S :<C-U>exec "normal a".RepeatChar(nr2char(getchar()), v:count1)<CR>

