let s:save_cpo = &cpo
set cpo&vim

function! s:palette() abort
  let p = {
        \ 'normal': {},
        \ 'inactive': {},
        \ 'insert': {},
        \ 'replace': {},
        \ 'visual': {},
        \ 'tabline': {}}

  let primary = ['#000000', '#585858', 16, 250]
  let secondary = ['#000000', '#bcbcbc', 16, 240]
  let teriary = ['#eeeeee', '#000000', 255, 16]
  let edit = ['#000000', '#585858', 16, 250, 'bold']
  let error = ['#eeeeee', '#870000', 255, 88]
  let warning = ['#afaf00', '#000000', 142, 16]

  let p.normal.middle = [teriary]
  let p.normal.left = [primary, secondary]
  let p.normal.right = [primary, secondary]
  let p.normal.error = [error]
  let p.normal.warning = [warning]

  let p.insert.left = [edit, secondary]
  let p.replace.left = [edit, secondary]
  let p.visual.left = [edit, secondary]

  let p.inactive.middle = [primary]
  let p.inactive.left = [primary]
  let p.inactive.right = [primary]

  let p.tabline.middle = [primary]
  let p.tabline.left = [primary]
  let p.tabline.right = [primary]
  let p.tabline.tabsel = [teriary]

  return p
endfunction

let g:lightline#colorscheme#kuro#palette = s:palette()

let &cpo = s:save_cpo
unlet s:save_cpo
