" This is my old vimrc, but as I add things to the new config (or
" decide to get rid of them), I remove things. So this is a bit of
" a weird file, but it doesn't really do anything in nvim

if &term =~# '^screen'
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

filetype plugin indent on
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType markdown set spell
augroup END

" Hack to make php files indent correctly
au BufEnter, BufNew *.php :set filetype=html syn=php

" Configuration of the tree view
let g:netrw_banner = 0
let g:netrw_browse_split = 0
let g:netrw_winsize = 25

call plug#begin('~/.vim/plugged')
  Plug 'github/copilot.vim'
  " 
  " Matching parentheses
  Plug 'jiangmiao/auto-pairs'
  "
  " Use % to jump between all types of tags, not only parentheses (e.g.
  " between start and end HTML tags)
  Plug 'tmhedberg/matchit'
  "
  " Adds the verb gc (comment)
  Plug 'vim-scripts/tComment'
  "
  " Tab autocompletes in a smart way
  Plug 'ervandew/supertab'
  "
  " Plugins to enter zen mode for writing (narrow and highlighted)
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  "
  " Lets me use Vim as a wiki with easy keybindings
  Plug 'vimwiki/vimwiki'
call plug#end()

" Goyo is a focus mode that you enter typing :Goyo (and leave it typing :Goyo!), and the following line activates limelight when doing that
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Config for Vim WIKI
let g:vimwiki_list = [{'path': '~/.wiki', 'index': '@index', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0

" Custom config for Vim WIKI
au FileType vimwiki call SetVimwikiKeybindings()
function SetVimwikiKeybindings()
  nmap <buffer> <F13> <Plug>VimwikiRemoveHeaderLevel
  nmap <buffer> - <Plug>VimwikiGoBackLink
endfunction

" *********** COMMANDS ************* 

function! Json() abort
  silent ! clear
  silent %! python -m json.tool
endfunction
command! Json :call Json()
" NOT REALLY NEEDED

" Quick run-with-ruby
autocmd FileType ruby nnoremap <Leader>r :w<cr>:vertical terminal !ruby %<cr>
autocmd FileType rust nnoremap <Leader>r :vertical terminal cargo run<cr>
