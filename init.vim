" =============================================================================
" Who: Alex Arnell (@voidlock)
" Description: The Vim Configuration of Champions
"     (based on: https://github.com/mutewinter/dot_vim)
" Version: Ever-evolving.
" =============================================================================


if has('nvim')
  let g:vimdir = "~/.config/nvim"
else
  let g:vimdir = "~/.vim"
endif

" All of the plugins are installed with Plug from this file.
exec "source " . g:vimdir . "/plug.vim"

" Platform (Windows, Mac, etc.) configuration.
exec "source " . g:vimdir . "/platforms.vim"
" All of the Vim configuration.
exec "source " . g:vimdir . "/config.vim"
" New commands
exec "source " . g:vimdir . "/commands.vim"
" All hotkeys, not dependant on plugins, are mapped here.
exec "source " . g:vimdir . "/mappings.vim"
" Load plugin-specific configuration.
exec "source " . g:vimdir . "/plugin_config.vim"
" Small custom functions.
exec "source " . g:vimdir . "/functions.vim"
" Auto commands.
exec "source " . g:vimdir . "/autocmds.vim"
