" Jearsh's .vimrc file
" Written in 2009 
"
" NOTES ARE AT THE BOTTOM OF THE FILE

syntax on                                         " Turn syntax highlighting on
filetype plugin on                                " Enable loading filetype plugins
filetype indent on                                " Enable loading indentation plugins

color elflord

set nostartofline
set textwidth=80
set expandtab                                     " turn tabs into spaces (or: noexpandtab - do not turn tabs into spaces, a tab is a tab)
set shiftround                                    " Round indent to multiple of 'shiftwidth' for > and < commands
set tabstop=2                                     " Use 2 spaces for <Tab> and :retab
set shiftwidth=2                                  " Use 2 spaces for (auto)indent
set softtabstop=2                                 " added by josh, saw it in a different vimrc
set hidden                                        " Allow a modified buffer to be put in the bg, keeping the undo history, etc.
set autowrite                                     " Write contents of the file, if it has been modified, on buffer exit
set incsearch                                     " Enable incremental search
set nohlsearch                                    " Don't highlight results of a search
set ignorecase                                    " Case insensitive search by default
set smartcase                                     " Disable 'ignorecase' if [A-Z] is in search query
set laststatus=2                                  " Always show status line, even for one window
set showcmd                                       " Show (partial) commands (or size of selection in Visual mode) in the status line
set number                                        " Show line numbers
set ruler                                         " Show line, column number, and relative position within a file in the status line
set nowrap                                        " don't word wrap
set linebreak                                     " If lines wrap, only wrap on whitespace. Don't split words in half.
set splitright                                    " When you :vs ... start on the right window, not the left
set backspace=indent,eol,start                    " Allow backspacing over everything
set nrformats=octal,hex,alpha                     " Enable CTRL-A/CTRL-X to work on octal and hex numbers, as well as characters
set scrolloff=0                                   " Scroll when cursor gets within 0 characters of top/bottom edge
set sidescrolloff=2                               " Scroll when cursor gets within 10 characters of left/right edge
set showmatch                                     " When a bracket is inserted, briefly jump to a matching one
set matchtime=2                                   " Jump to matching bracket for 2/10th of a second (works with showmatch)
set wildmenu                                      " Use menu to show command-line completion (in 'full' case)
set wildmode=list:longest,full                    " Set command-line completion mode:
set history=1000                                  " Remember up to 1000 'colon' commmands and search patterns
set backupdir=~/.backups/
set directory=~/.backups/
set equalprg=bc                                   " cmd to use when you press = in visual mode
set mouse=a
set t_RV=                                         " Don't request terminal version string (for xterm)
set updatecount=50                                " Write swap file to disk after every 50 characters
set enc=utf-8                                     " Use UTF-8 as the default buffer encoding
"set shortmess=filnxtToO                          " this is the default value, changed it to avoid the hit-enter message
set viminfo='200,\"100,/9000,:9000,n~/.viminfo    " Remember things between sessions

" hello ( world ( this ) (is a test) (and (all of) that) fun stuff)
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif  " Go back to the position the cursor was on the last time this file was edited

" have gf open file under cursor in vertical split
nnoremap gf :vs <cfile><CR>
vnoremap < <gv  " visual shifting (does not exit Visual mode)
vnoremap > >gv
nnoremap > >>
nnoremap < <<
nnoremap j gj
nnoremap k gk
nnoremap K kJ

hi! link fsize Directory      "cterm=none ctermfg=4 ctermbg=Black
hi flink cterm=none ctermfg=3 ctermbg=0
hi fRedCheck cterm=standout ctermfg=Red ctermbg=Black
hi fchecked cterm=bold ctermfg=2 ctermbg=0
hi funchecked cterm=bold ctermfg=1 ctermbg=0
hi fother cterm=bold ctermfg=3 ctermbg=0
hi ftime cterm=none ctermfg=Green ctermbg=Black
hi j cterm=none ctermfg=White ctermbg=Cyan

" Used for List Highlighting
  hi listOpen cterm=none ctermfg=1 ctermbg=0
  hi listSmX cterm=bold ctermfg=2 ctermbg=0
  hi listX cterm=none ctermfg=0 ctermbg=1
  hi listNS cterm=bold ctermfg=3 ctermbg=0
  hi listM01 cterm=none ctermfg=0 ctermbg=6
  hi listM02 cterm=none ctermfg=0 ctermbg=White
  hi listM03 cterm=none ctermfg=0 ctermbg=3
  hi listM04 cterm=none ctermfg=0 ctermbg=4
  hi listM05 cterm=none ctermfg=0 ctermbg=5
  hi listM06 cterm=none ctermfg=0 ctermbg=2
  hi listM07 cterm=reverse ctermfg=white ctermbg=0
  hi listM08 cterm=reverse ctermfg=lightblue ctermbg=white
  hi listM09 cterm=none ctermfg=6 ctermbg=0
  hi listM10 cterm=none ctermfg=White ctermbg=0
  hi listM11 cterm=none ctermfg=4 ctermbg=0
  hi listM12 cterm=none ctermfg=5 ctermbg=0
  hi listM13 cterm=none ctermfg=white ctermbg=0
  hi listM14 cterm=none ctermfg=lightblue ctermbg=white

  syn keyword listOpen listOpen 
  syn keyword listSmX listSmX 
  syn keyword listX listX
  syn keyword listNS listNS 
  syn keyword listM01 listM01
  syn keyword listM02 listM02
  syn keyword listM03 listM03
  syn keyword listM04 listM04
  syn keyword listM05 listM05
  syn keyword listM06 listM06
  syn keyword listM07 listM07
  syn keyword listM08 listM08
  syn keyword listM09 listM09 
  syn keyword listM10 listM10 
  syn keyword listM11 listM11 
  syn keyword listM12 listM12 
  syn keyword listM13 listM13 
  syn keyword listM14 listM14 

" Personalize Existing Highlight Groups
hi LineNr cterm=none ctermfg=Red ctermbg=Black
hi IncSearch cterm=none ctermfg=White ctermbg=Cyan
hi Search cterm=none ctermfg=White ctermbg=Cyan
hi Comment cterm=none ctermfg=Gray  " Generic highlight changes
hi String cterm=none ctermfg=DarkGreen
hi treeDir cterm=none ctermfg=Cyan
hi treeUp cterm=none ctermfg=DarkYellow
hi treeCWD cterm=none ctermfg=DarkYellow
hi netrwDir cterm=none ctermfg=Cyan
hi PreProc ctermfg=4
hi SpecialKey ctermfg=5
hi NonText ctermfg=3
hi Underlined ctermfg=2

" Link a,b,c,d to other Highlight Groups
hi link a ErrorMsg
hi link b StatusLine
hi link c Search
hi link d DiffChange

" Syntax Highlighting for my "list" system
" Extract these into their own syntax file
let g:listFiles="{*/lists/*,/Volumes/jearsh/*/readme}"

au BufNewFile,BufRead,BufReadPost */lists/* set filetype=lists syntax=lists
"au BufNewFile  */lists/* set filetype=lists
"au BufNewFile  */lists/* set syntax=lists
"au BufRead     */lists/* set filetype=lists
"au BufRead     */lists/* set syntax=lists
"au BufReadPost */lists/* set filetype=lists
"au BufReadPost */lists/* set syntax=lists

au BufNewFile,BufRead,BufReadPost * silent call SaveRecentFile()

au Filetype */lists/* runtime! ~/.vim/syntax/lists.vim
set backupskip=/tmp/*,/private/tmp/*" 

"1,$retab!

let loaded_matchparen = 1  " Avoid loading MatchParen plugin
let g:netrw_browse_split = 1  " netRW: Open files in a split window

hi popMatch1 cterm=none ctermfg=0 ctermbg=1
hi popMatch2 cterm=none ctermfg=0 ctermbg=6
hi popMatch3 cterm=none ctermfg=0 ctermbg=White
hi popMatch4 cterm=reverse ctermfg=0 ctermbg=White
hi popMatch5 cterm=none ctermfg=0 ctermbg=3
hi popMatch6 cterm=none ctermfg=0 ctermbg=4
hi popMatch7 cterm=none ctermfg=0 ctermbg=5
hi popMatch8 cterm=none ctermfg=0 ctermbg=2
hi popMatch9 cterm=reverse ctermfg=white ctermbg=0
hi popMatch10 cterm=reverse ctermfg=lightblue ctermbg=white

" spell check
ab cls class
ab fun function
ab functino function
ab functinos functions

" normal abbreviations
ab stamp =strftime("%Y-%m-%d %H:%M:%S")
ab timestamp =strftime("%c")

ab YY =strftime("%y")
ab yy =strftime("%y")
ab YYYY =strftime("%Y")
ab yyyy =strftime("%Y")
ab mm =strftime("%m")
ab dd =strftime("%d")
ab YYYYmmdd =strftime("%Y%m%d")
ab yyyymmdd =strftime("%Y%m%d")

ab hh =strftime("%H")
ab HH =strftime("%H")
ab MM =strftime("%M")
ab ss =strftime("%S")
ab SS =strftime("%S")
ab hhmmss =strftime("%H%M%S")
ab HHMMSS =strftime("%H%M%S")

ab YYYYmmddHHMMSS =strftime("%Y%m%d%H%M%S")
ab yyyymmddHHMMSS =strftime("%Y%m%d%H%M%S")




ca note setl buftype=nofile
ca nonote setl buftype<
ca w!! w ! sudo tee "%"
"ca man !man
ca Ls ls
ca LS ls
ca Make make
ca setpaste set paste!
ca updatewww %s@^\.\(.*\)$@vim -d $beta\1 $www\1@c
ca recent PutRecentFiles

"ca mkupdatesh /* --- have this reflect how i make my update.sh for zeus/morpheus */

" Aliases for my functions
ca blist Blist
ca nomat NoMatches
ca mktitle Mktitle
ca mkfile Mkfile
ca mkdir Mkdir
ca scratch Scratch
ca mat Match
ca vb Vb
ca ilp IListPrompt
ca seq Seq
ca getoutput CaptureOutput
ca getout CaptureOutput
ca capture CaptureOutput
ca captureoutput CaptureOutput
ca fixlistsyntax FixListSyntax

ca repl ReplStr
ca changenick ChangeNick
ca nick ChangeNick

" My function declarations
command! -nargs=1 ReplStr exe "s/SSS/" . <q-args>
command! -nargs=1 ChangeNick exe '%s#\v(((real|user)_name|nick) [=] ["])[^"]*(["])#\1' . <q-args> . '\4#|w'
command! NoMatches call clearmatches()
command! -range Blist <line1>,<line2>call Bufferlist()
command! -nargs=0 Mktitle s/^\(\s*\)\(.\{-}\)\s*$/\1[ \2 ]/
command! -nargs=0 Mkfile s/^\(\s*\)\(.\{-}\)\s*$/\1[[[ \2 ]]]/
command! -nargs=0 PutRecentFiles call PutRecentFiles()
command! -nargs=0 Mkdir call Mkdir()
command! -nargs=0 FixListSyntax call FixListSyntax()
command! -nargs=0 Scratch call Scratch()
command! -nargs=+ Match call Match(<q-args>)
command! -nargs=* Vb exe "vert sb " . <q-args>
command! -nargs=+ IListPrompt call <SID>IListPrompt(<q-args>)
command! -range -nargs=* Seq <line1>,<line2>call Sequence(<f-args>)
command! -complete=shellcmd -complete=file -complete=dir -nargs=+ CaptureOutput call CaptureOutput(<q-args>)

" My function definitions
function! PutRecentFiles()
  r!cat /var/jearsh/env/recent.vim
  "r!cat /var/jearsh/env/recent.vim | head -15
endfunction

function! s:IListPrompt(pattern)
  let pat = a:pattern
  if strlen(pat) > 0
    if matchstr(pat, "^/") != "/"
      let pat="/" . pat
    endif
    if matchstr(pat, "/$") != "/"
      let pat = pat . "/"
    endif
    let v:errmsg = ""
    exe "ilist! " . pat
    if strlen(v:errmsg) == 0
      let nr = input("Which one: ")
      if nr =~ '\d\+'
        exe "ijump! " . nr . pat
      endif
    endif
  endif
endfunction "tagsrch.txt:673

function! Bufferlist() range
  "silent exe a:firstline . "," . a:lastline . 's/^\s*//'
  "silent exe a:firstline . "," . a:lastline . 's/\s*$//'
  "silent exe a:firstline . "," . a:lastline . 's/"[^"]*$//'
  "silent exe a:firstline . "," . a:lastline . 's/^[^"]*"//'
  "silent exe a:firstline . "," . a:lastline . "!sort -u"

  silent exe a:firstline . "," . a:lastline . 's/^[^"]*"//'
  silent exe a:firstline . "," . a:lastline . 's/"[^"]*$//'
  silent exe a:firstline . "," . a:lastline . "!sort -u"
  silent exe "norm gv"
endfunction

function! CaptureOutput(cmd)
  redir => capturedoutput
  silent execute a:cmd
  redir END
  silent put=capturedoutput
endfunction

function! SaveRecentFile ()
  silent !echo %:p >/tmp/recent.txt
  silent !cat /Volumes/jearsh/env/recent.vim | grep -v "%:p" >>/tmp/recent.txt
  silent !cat /tmp/recent.txt >/Volumes/jearsh/env/recent.vim
  "silent !mv /tmp/recent.txt /Volumes/jearsh/env/recent.vim
endfunction

function! Match(mregex)
  let groups = ["popMatch1", "popMatch2", "popMatch5", "popMatch6", "popMatch7", "popMatch8", "popMatch9", "popMatch10", "popMatch3", "popMatch4"]
  let matches = getmatches()
  while len(matches) > len(groups)
    let matches = matches[len(groups):]
  endwhile
  for mg in groups
    if exists("used")
      unlet used
    endif
    for mm in matches
      if mm.group == mg
        let used = "used"
        break
      endif
    endfor
    if !exists("used")
      let groupToUse = mg
      break
    endif
  endfor
  if !exists("groupToUse")
    let groupToUse = "ErrorMsg"
  endif
  call matchadd(groupToUse, a:mregex)
endfunction

function! Sequence(pat) range
  let x=1
  exe a:firstline . "," . a:lastline . "g" . a:pat . "s" . a:pat . "\\=x/ | let x=x+1"
endfunction

function! CleanupChat() range
  let x=1
  let rng=a:firstline . "," . a:lastline

  " remove all "\d:\d\d [AP]M"
  " s/^(Joshua Toyota|daniel|pedram)\s*\n/<a href="">\1</a>: /
  " get the length of \1
  " take all the lines before the next /^<a href/
  " and add the length of \1 + 2 to te beginning of those lines
  " %s/\v^\s*\n(\s*\n)+//g
  "exe rng . "g" . a:pat . "s" . a:pat . "\\=x/ | let x=x+1"
endfunction

function! Mkdir()
  let path = expand("%:p:h")
  if len(glob(path)) == 0
    echo "Making directory: " . path . " it doesn't exist."
    call mkdir(path, "p")
  else
    echo "Directory already exists..."
  endif
endfunction

function! Scratch()
  let stmp = strftime("%Y%m%d.%H%M%S")
  exe "vs ~/lists/scratch/" . stmp
endfunction

function! FixListSyntax()
  set filetype=lists syntax=lists
  syn match listM09  /[0-9 ]\?[0-9. ]\?[0-9][BKMG]/
  syn match listM09  /\[[^[\]]*\]/
  syn match listNS   /\[\[\[.*\]\]\]/
  syn match listNS   /([^ ]*)/
  syn match listOpen /( )/
  syn match listSmX  /(x)/
  syn match listX    /(X \?.*)/
  syn match listSmX  /(josh @ [^)]\+)/
  syn match listSmX  /((.*))/
  syn match listTime /\d\d\d\d-\d\d-\d\d ..:..:../
endfunction
" --------------    NOTES    ---------------
" Full .vimrc With Comments:
" /Volumes/jearsh/dev/tests/vim/full.vimrc
"
" Notes:
" ~/lists/unix/vim/tips
" Help Directory:
" /opt/local/share/vim/vim72/doc
" DefaultConfigs:
" /opt/local/share/vim/vim72
" /usr/share/vim/vim72
"
" Resources:
" * http://www.vi-improved.org/vimrc.php
" * http://jmcpherson.org/vimrc.html
"
" Exuberant: ctags - taglist plugin not loaded
" vim $HOME/.vim/plugin/taglist.vim +97,98s#^#\"#
"

"""""""""""""""""""""""""""""""
" Learn Undo Branching in VIM "
" --------------------------- "
"  http://vimdoc.sourceforge.net/htmldoc/undo.html
"  http://vimdoc.sourceforge.net/htmldoc/undo.html#u
"  http://vimdoc.sourceforge.net/htmldoc/insert.html#i_CTRL-G_u
"""""""""""""""""""""""""""""""
