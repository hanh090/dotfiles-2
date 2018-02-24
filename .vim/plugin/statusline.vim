scriptencoding UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    [1]     [2]        [3]      [4]            [5]    [6]         [7]    "
"   0  0  plugin/statusline.vim                 002/026:32  master   "
"  -------  ------ -------------- -              -  ----------  --------  "
"     |_      |__     |______     |__        ____|      |__        |_     "
"       |        |           |__     |      |              |         |    "
"       |       fileprefix()    |    |    spell()        %l/%L:%c    |    "
"      linter()                 %t  filetypesymbol()               git()  "
"                                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" [1] Linter status, error and warnings count with Unicode symbols.
set statusline+=%{repeat('\ ',4)} " Generate space characters given number of times.
set statusline+=%{kutsan#statusline#linter()}
set statusline+=%{repeat('\ ',4)}

" [2] Relative path to file's directory with trailing '/'.
set statusline+=%{kutsan#statusline#fileprefix()}

" [3] File name for current buffer.
set statusline+=%t

" [4] FileType Unicode symbol.
set statusline+=%{repeat('\ ',1)}
set statusline+=%{kutsan#statusline#filetypesymbol()}

" Align all items to right from this point on.
set statusline+=%=

" [5] Show an icon if spell checking enabled, otherwise empty.
set statusline+=%{kutsan#statusline#spell()}
set statusline+=%{repeat('\ ',2)}

" [6] Line numbers and column numbers in <Line>:<Column> format.
set statusline+=%03l/%03L:%02c
set statusline+=%{repeat('\ ',2)}

" [7] Git HEAD status.
set statusline+=%{kutsan#statusline#git()}
set statusline+=%{repeat('\ ',2)}