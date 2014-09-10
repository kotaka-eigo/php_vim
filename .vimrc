let g:hybrid_use_Xresources = 1
colorscheme hybrid
syntax on

set encoding=utf-8
set fileencodings=euc-jp

set wildmenu wildmode=list:full

if has('vim_starting')
   set nocompatible      " Be iMproved

   "Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"My Bundles Plugin
NeoBundle 'Shougo/neocomplcache'

call neobundle#end()
" Required:
filetype plugin on

"autocmd FileType php :set dictionary=~/.vim/dict/php.dict
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4

map! <C-e> <Esc>$a
map! <C-a> <Esc>^a

map <C-e> <Esc>$a
map <C-a> <Esc>^a

noremap <C-p> "0p
noremap x "_x


" �䴰������ɥ�������
set completeopt=menuone
 
" ��ư����ͭ����
let g:neocomplcache_enable_at_startup = 1
 
" ��ʸ�������Ϥ����ޤ���ʸ����ʸ���ζ��̤�̵�뤹��
let g:neocomplcache_enable_smart_case = 1
 
" _(�������������)���ڤ���䴰��ͭ����
let g:neocomplcache_enable_underbar_completion = 1
 
let g:neocomplcache_enable_camel_case_completion  =  1

" �ǽ���䴰�����������֤ˤ���
let g:neocomplcache_enable_auto_select = 1
 
" �ݥåץ��åץ�˥塼��ɽ����������ο�
let g:neocomplcache_max_list = 20
 
" ���󥿥å����򥭥�å��夹��Ȥ��κǾ�ʸ��Ĺ
let g:neocomplcache_min_syntax_length = 3
 
" �ǥ�������ʥ����
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'php' : $HOME . '/.vim/dict/php.dict',
    \ 'ctp' : $HOME . '/.vim/dict/php.dict'
    \ }
 
if !exists('g:neocomplcache_keyword_patterns')
        let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
 
" ���˥ڥåȤ�Ÿ�����롣���˥ڥåȤ��ط����ʤ��Ȥ���ǤϹ����ޤǺ��
imap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
smap <expr><C-k> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : "\<C-o>D"
 
" ����Ԥ�줿�䴰�򥭥�󥻥뤷�ޤ�
inoremap <expr><C-g> neocomplcache#undo_completion()
 
" �䴰����Τʤ����顢���̤�����ʬ���䴰���ޤ�
inoremap <expr><C-l> neocomplcache#complete_common_string()
 
" ���Ԥ��䴰������ɥ����Ĥ���
" inoremap <expr><CR> neocomplcache#smart_close_popup() . "\<CR>"
 
"tab���䴰����������Ԥ�
inoremap <expr><TAB> pumvisible() ? "\<Down>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<Up>" : "\<S-TAB>"
 
" <C-h>��<BS>�򲡤����Ȥ��˳μ¤˥ݥåץ��åפ������ޤ�
inoremap <expr><C-h> neocomplcache#smart_close_popup().��\<C-h>��
 
" �������򤷤Ƥ���������ꤷ�ޤ�
inoremap <expr><C-y> neocomplcache#close_popup()
" inoremap <expr><C-CR> neocomplcache#close_popup()
 
" �������򤷤Ƥ������򥭥�󥻥뤷���ݥåץ��åפ��Ĥ��ޤ�
inoremap <expr><C-e> neocomplcache#cancel_popup()

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END


