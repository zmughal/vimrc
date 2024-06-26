"=============================================================================
" File:         plugin/boundaries.vim                             {{{1
" Author:       Luc Hermitte <EMAIL:luc {dot} hermitte {at} gmail {dot} com>
"		<URL:http://github.com/LucHermitte/lh-dev>
" License:      GPLv3 with exceptions
"               <URL:http://github.com/LucHermitte/lh-dev/tree/master/License.md>
" Version:      2.0.0
let s:k_version = '2.0.0'
" Created:      25th May 2016
" Last Update:  23rd Feb 2024
"------------------------------------------------------------------------
" Description:
"       Select function boundaries
" }}}1
"=============================================================================

" Avoid global reinclusion {{{1
let s:cpo_save=&cpo
set cpo&vim
if &cp || (exists("g:loaded_boundaries")
      \ && (g:loaded_boundaries >= s:k_version)
      \ && !exists('g:force_reload_boundaries'))
  let &cpo=s:cpo_save
  finish
endif
let g:loaded_boundaries = s:k_version
" Avoid global reinclusion }}}1
"------------------------------------------------------------------------
" Commands and Mappings {{{1
onoremap <silent> <Plug>(lhdev-select-function) :<c-u>call lh#dev#_select_current_function()<cr>
xnoremap <silent> <Plug>(lhdev-select-function) :<c-u>call lh#dev#_select_current_function()<cr><esc>gv

silent call lh#mapping#plug('if', '<Plug>(lhdev-select-function)', 'ox')

" Commands and Mappings }}}1
"------------------------------------------------------------------------
" Functions {{{1
" Note: most functions are best placed into
" autoload/«your-initials»/«boundaries».vim
" Keep here only the functions are are required when the plugin is loaded,
" like functions that help building a vim-menu for this plugin.
" Functions }}}1
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
" vim600: set fdm=marker:
