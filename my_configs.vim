" set mouse on
set mouse=a
set nu

" cd ..
map <leader>.. :cd ..<cr>:pwd<cr>

" cd ../../../
map <leader>3.. :cd ../../..<cr>:pwd<cr>

" cd -
map <leader>- :cd -<cr>:pwd<cr>

" cd ./
map <leader>. :cd ./

" open current dir
map <leader>e :e! ./<cr>

" quit
map <leader>q :q<cr>

" search in .h .hpp files
vnoremap <silent> gh :call MyVisualSelection('gv', '--hpp')<CR>

" search in c c++ files
vnoremap <silent> gcc :call MyVisualSelection('gv', '--cc --cpp')<CR>

function! MyVisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "'  ". a:extra_filter ."")
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
