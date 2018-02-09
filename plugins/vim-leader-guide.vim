let g:lmap =  {}
call leaderGuide#register_prefix_descriptions(",", "g:lmap")
nnoremap <space> :LeaderGuide ','<CR>
vnoremap <space> :LeaderGuideVisual ','<CR>
