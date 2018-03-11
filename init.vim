if has("win64") || has("win32")
    let g:python_host_prog='C:\Users\hankelbao\AppData\Local\Programs\Python\Python36-32\python.exe'
    let g:python3_host_prog='C:\Users\hankelbao\AppData\Local\Programs\Python\Python36-32\python.exe'
    source ~\appdata\local\nvim\plug.vim
    source ~\appdata\local\nvim\mapping.vim
    source ~\appdata\local\nvim\basic.vim
else
    let g:python_host_prog='python'
    source ~/.config/nvim/plug.vim 
    source ~/.config/nvim/mapping.vim
    source ~/.config/nvim/basic.vim
endif
