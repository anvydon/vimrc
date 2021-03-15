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
