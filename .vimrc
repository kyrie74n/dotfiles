 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " Utils
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'tomasr/molokai'
 NeoBundle 'sjl/badwolf'
 NeoBundle 'Shougo/neocomplete'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'tpope/vim-pathogen'
 NeoBundle 'vim-scripts/taglist.vim'
 NeoBundle 'szw/vim-tags'
 NeoBundle 'Shougo/unite.vim'

 " PHP IDE
 NeoBundle 'joonty/vdebug'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
 colorscheme badwolf
 execute pathogen#infect()
 syntax on
 filetype plugin indent on
 let g:neocomplete#enable_at_startup = 1
 set number

 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 set tags=tags
 set expandtab
 set hlsearch
 set tabstop=4
 set shiftwidth=4

 let Tlist_Ctags_Cmd = "/usr/bin/ctags"
 let Tlist_Show_One_File = 1
 let Tlist_Use_Right_Window = 1
 let Tlist_Exit_OnlyWindow = 1

 let g:syntax_always_populate_loc_list = 1
 let g:syntax_auto_loc_list = 1
 let g:syntax_check_on_open = 1
 let g:syntax_check_on_wq = 0
 let g:syntastic_error_symbol='✗'
 let g:syntastic_warning_symbol='⚠'
 let g:syntastic_style_error_symbol = '✗'
 let g:syntastic_style_warning_symbol = '⚠'
 let g:syntastic_check_on_wq = 0
 " hi SyntasticErrorSign ctermfg=160
 " hi SyntasticWarningSign ctermfg=220
