" ensure onehalf is installed
if exists('g:plug_installing_plugins')
  Plug 'sonph/onehalf', { 'rtp': 'vim' }
  finish
endif

" colorscheme
colorscheme onehalfdark

" lightline
let g:lightline = { 'colorscheme': 'onehalfdark' }
