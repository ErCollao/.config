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
  " Language support for Ruby on Rails editing
  Plug 'vim-ruby/vim-ruby'
  " Lets plugins (e.g. vim-surround) repeat with the . command
  Plug 'tpope/vim-rails'
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
  " Lets languages understand more programming languages
  Plug 'sheerun/vim-polyglot'
  "
  " Snippets in Vim
  Plug 'marcweber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  "
  " Use .editorconfig file for indentation and the like
  Plug 'editorconfig/editorconfig-vim'
  "
  "
  " CtrlP fuzzy finder
  " Plug 'kien/ctrlp.vim'
  "
  " Plugins to enter zen mode for writing (narrow and highlighted)
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  "
  " Asyncronous checking
  Plug 'dense-analysis/ale'
  "
  " Language support for Vue
  Plug 'posva/vim-vue'
  "
  " Language support for Svelte
  Plug 'evanleck/vim-svelte', {'branch': 'main'}
  "
  " Navigates seamlessly panes from vim and tmux (ctrl+hjkl)
  Plug 'christoomey/vim-tmux-navigator'
  "
  " Lets me use Vim as a wiki with easy keybindings
  Plug 'vimwiki/vimwiki'
  " 
  " Natural way of using netrw file browser with keystroke - (and other
  " Plugins to explore at some point
  "
  " Check what overlaps exist between supertab and vim-snippets
  " 
  " HTML generator
  " Plug 'rstacruz/sparkup'
  "
  " Using Ack for search, check differences with ripgrep and :Rg (they seem
  " equally fast)
  " Plug 'mileszs/ack.vim'

  Plug 'jgdavey/tslime.vim'
  "
call plug#end()

" Goyo is a focus mode that you enter typing :Goyo (and leave it typing :Goyo!), and the following line activates limelight when doing that
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Configuration of ALE linter
let g:ale_set_highlights = 0
let g:ale_linters = {
      \   'ruby': ['rubocop']
      \}
let g:ale_fixers = {
      \   'ruby': ['rubocop'],
      \}
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_options = '-D'

" Mods to the colorscheme
hi NonText ctermfg=none

" Config for EditorConfig to play nice with Vim Fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

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

" Quickly edit vimrc file
command Evimrc edit ~/.vim/vimrc
command Svimrc source ~/.vim/vimrc
" NOT REALLY NEEDED

highlight VertSplit guifg=#3E4452

function! Json() abort
  silent ! clear
  silent %! python -m json.tool
endfunction
command! Json :call Json()
" NOT REALLY NEEDED

" Configuration for snipMate
let g:snipMate = { 'snippet_version' : 1  }

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
map <Leader>f :call RunCurrentSpecFile()<CR>
map <Leader>j :call RunNearestSpec()<CR>
map <Leader>k :call RunLastSpec()<CR>
map <Leader>h :call RunAllSpecs()<CR>
let g:tslime_always_current_session = 1
let g:tslime_always_current_window = 1
let g:tslime_autoset_pane = 1

" Quick run-with-ruby
autocmd FileType ruby nnoremap <Leader>r :w<cr>:vertical terminal !ruby %<cr>
autocmd FileType rust nnoremap <Leader>r :vertical terminal cargo run<cr>
