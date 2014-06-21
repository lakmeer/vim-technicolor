"
" Reset that shit yo
" ------------------

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "Technicolor"


"
" Define s:master colour palletes
" -----------------------------

" Master dictionary
let s:master = {}

" Neutral default colors
let s:master['neutral']           = {}
let s:master['neutral']['bright'] = ['#ffffff', '15',  '15' ]
let s:master['neutral']['light']  = ['#eeeeee', '255', '15' ]
let s:master['neutral']['medium'] = ['#cccccc', '251', '7'  ]
let s:master['neutral']['dark']   = ['#888888', '241', '8'  ]
let s:master['neutral']['invert'] = ['#212121', '233', '0'  ]

" Red
let s:master['red']               = {}
let s:master['red']['bright']     = [ '#FF4444', '196', '9'  ]
let s:master['red']['light']      = [ '#FF7777', '210', '9'  ]
let s:master['red']['dark']       = [ '#dd4444', '160', '1'  ]
let s:master['red']['invert']     = [ '#551111', '124', '1'  ]

" Orange
let s:master['orange']            = {}
let s:master['orange']['bright']  = [ '#FFBB33', '214', '11' ]
let s:master['orange']['light']   = [ '#FFCC88', '221', '11' ]
let s:master['orange']['dark']    = [ '#CC8800', '178', '3'  ]
let s:master['orange']['invert']  = [ '#553300', '172', '3'  ]

" Green
let s:master['green']             = {}
let s:master['green']['bright']   = [ '#44ff66', '41',  '10' ]
let s:master['green']['light']    = [ '#88ffaa', '84',  '10' ]
let s:master['green']['dark']     = [ '#22bb33', '28',  '2'  ]
let s:master['green']['invert']   = [ '#115511', '16',  '2'  ]

" Magenta
let s:master['magenta']           = {}
let s:master['magenta']['bright'] = [ '#ff33ff', '199', '13' ]
let s:master['magenta']['light']  = [ '#ffaaff', '213', '13' ]
let s:master['magenta']['dark']   = [ '#bb22bb', '162', '5'  ]
let s:master['magenta']['invert'] = [ '#551155', '125', '5'  ]

" Blue
let s:master['blue']              = {}
let s:master['blue']['bright']    = [ '#66bbff', '75',  '12' ]
let s:master['blue']['light']     = [ '#aaddff', '153', '12' ]
let s:master['blue']['dark']      = [ '#5588ee', '69',  '4'  ]
let s:master['blue']['invert']    = [ '#111155', '17',  '4'  ]

" Brown
let s:master['brown']             = {}
let s:master['brown']['bright']   = [ '#ffbb33', '166', '11' ]
let s:master['brown']['light']    = [ '#ffcc88', '173', '11' ]
let s:master['brown']['dark']     = [ '#bb9900', '130', '3'  ]
let s:master['brown']['invert']   = [ '#555511', '130', '3'  ]

" Yellow
let s:master['yellow']            = {}
let s:master['yellow']['bright']  = [ '#eeee11', '226', '11' ]
let s:master['yellow']['light']   = [ '#ffffaa', '228', '11' ]
let s:master['yellow']['dark']    = [ '#ccbb00', '178', '3'  ]
let s:master['yellow']['invert']  = [ '#555511', '3',   '3'  ]

" Cyan
let s:master['cyan']              = {}
let s:master['cyan']['bright']    = [ '#44ddff', '81',  '14' ]
let s:master['cyan']['light']     = [ '#aae3ff', '159', '14' ]
let s:master['cyan']['dark']      = [ '#00aacc', '38',  '6'  ]
let s:master['cyan']['invert']    = [ '#006699', '24',  '6'  ]


"
" Define functions to apply palettes
" ----------------------------------

" Assign colors in a way that accepts variables for dryness
function! DryColor (name, color, ...)
  if a:0 > 0
    execute "hi " . a:name . " guifg=" . a:color[0] . ' ctermfg=' . a:color[1] . ' ' . s:assignDetail(a:1)
  else
    execute "hi " . a:name . " guifg=" . a:color[0] . ' ctermfg=' . a:color[1]
  endif
endfunction

" Process any extra hilight parameters we want to include
function! s:assignDetail(map)
  let result = ''
  for this in keys(a:map)
    let result .= " " . this . "=" . a:map[this]
  endfor
  return result
endfunction

" Do multiple similar assignments taking an array of strings
function! DryMany (color, list)
  for i in range(0, len(a:list) - 1)
    call DryColor(a:list[i], a:color)
  endfor
endfunction


"
" Actual colour assignment begins
" -------------------------------

" b:f, l:d, m:c, d:8, i:3

" Normal
hi Normal         guibg=#1a1a1a guifg=#cccccc ctermfg=grey     ctermbg=NONE

" Cursor
hi Cursor         guibg=#ffffff guifg=#000000 ctermfg=white    ctermbg=black
hi CursorLine     guibg=#222222
hi CursorColumn   guibg=#222222               ctermbg=235
hi ColorColumn    guibg=#222222               ctermbg=233
hi MatchParen     guibg=#666666               ctermbg=236
hi Visual         guibg=#393939               ctermfg=15       ctermbg=237
hi VisualNOS                                  ctermfg=grey

" Folding
hi Folded         guibg=bg      guifg=#888888 ctermfg=white    ctermbg=black

" Info Columns
hi LineNr         guifg=#888888               ctermfg=238      ctermbg=233
hi FoldColumn     guifg=#888888               ctermfg=238      ctermbg=233

" Window Elements
hi StatusLine     guifg=#444444 guibg=#dddddd ctermfg=255      ctermbg=235  cterm=bold
hi StatusLineNC   guifg=#282828 guibg=#888888 ctermfg=238      ctermbg=234  cterm=NONE
hi VertSplit      guifg=#282828 guibg=#282828 ctermfg=234      ctermbg=234
hi NonText        guifg=#888888

" Popups
hi Pmenu          guifg=#888888 guibg=#282828 ctermfg=black    ctermbg=grey
hi PmenuSel       guifg=#ffffff guibg=#444444 ctermfg=red      ctermbg=grey
hi Search         guibg=#1a1a1a guifg=cyan    ctermfg=cyan     ctermbg=black  gui=bold,underline
hi Incsearch      guibg=#1a1a1a guifg=cyan    ctermfg=cyan     ctermbg=black  gui=bold,underline

" DiffMode
hi DiffChange     guifg=#888888 guibg=bg
hi DiffAdd        guifg=#88ffaa guibg=bg      ctermfg=84       ctermbg=NONE
hi DiffDelete     guifg=#FF7777 guibg=bg      ctermfg=210      ctermbg=NONE
hi DiffText       guifg=#ffffff


"
" Global Base Styles (neutral)
" ----------------------------

let s:n = s:master['neutral']

" Bright white
call DryMany (s:n['bright'], ['Character', 'Conditional', 'Constant', 'Define', 'Directory'])
call DryMany (s:n['bright'], ['Exception', 'Include', 'Keyword', 'Label', 'Operator', 'Precondit'])
call DryMany (s:n['bright'], ['Function', 'Identifier', 'PreProc', 'StorageClass', 'Structure'])
call DryMany (s:n['bright'], ['Special', 'SpecialChar', 'SpecialComment', 'Tag', 'Typedef', 'WarningMsg'])

" White with special formatting
call DryColor('Boolean',   s:n['bright'], { 'gui' : 'bold', 'cterm' : 'bold' })
call DryColor('Statement', s:n['bright'], { 'gui' : 'bold', 'cterm' : 'bold' })
call DryColor('Repeat',    s:n['bright'], { 'gui' : 'bold', 'cterm' : 'bold' })
call DryColor('Type',      s:n['bright'], { 'gui' : 'bold', 'cterm' : 'bold', 'ctermbg' : 'NONE' })
call DryColor('Float',     s:n['bright'], { 'gui' : 'NONE' })
call DryColor('Number',    s:n['bright'], { 'gui' : 'NONE' })

" Normal white
call DryMany (s:n['medium'], [ 'Debug', 'Delimiter', 'Macro', 'ModeMsg', 'MoreMsg', 'Question', 'String', 'Title' ])

" Dim
call DryMany (s:n['dark'], [ 'Comment', 'WildMenu' ])

" Special
hi Error                                guibg=#dd2222  ctermbg=124
hi Todo             guifg=#999999       guibg=NONE    ctermfg=246 ctermbg=NONE gui=bold cterm=bold
hi SpecialKey       guifg=black         guibg=#ffffff


"
" HTML - Default = orange
" -----------------------

let s:html = s:master['orange']

call DryColor('HtmlTagName',        s:html['bright'])
call DryColor('HtmlSpecialTagName', s:html['bright'])
call DryColor('HtmlLink',           s:html['light'],        { 'gui' : 'none'    })
call DryColor('HtmlSpecialChar',    s:html['light'],        { 'gui' : 'bold'    })
call DryColor('HtmlArg',            s:html['dark'])

call DryColor('HtmlH1',             s:n['bright'],          { 'gui' : "bold"    })
call DryColor('HtmlH1',             s:n['light'],           { 'gui' : "bold"    })

call DryColor('HtmlBold',           s:n['medium'],          { 'gui' : "bold"    })
call DryColor('HtmlItalic',         s:n['medium'],          { 'gui' : "italic"  })

call DryColor('HtmlTag',            s:n['light'])
call DryColor('HtmlEndTag',         s:n['light'])
call DryColor('HtmlString',         s:n['bright'])

" Jade extensions

call DryColor('jadeTag',            s:html['bright'])

" JSP Extensions

let s:jsp = s:master['green']

call DryColor('jspDirective', s:jsp['light'])
call DryColor('jspTag',       s:jsp['light'])
call DryColor('jspDirName',   s:jsp['bright'])
call DryColor('jspExpr',      s:jsp['bright'])
call DryColor('jspDirArg',    s:jsp['dark'])

" Markdown Extensions

call DryColor('mkdListItem',       s:html['bright'])
call DryColor('markdownCode',      s:n['bright'])
call DryColor('markdownCodeBlock', s:n['bright'])


"
" JavaScript - Green
" ------------------

let s:js = s:master['green']

call DryMany (s:js['bright'], ['JavaScriptReserved', 'JavaScriptType', 'JavaScriptGlobal', 'JavaScriptMember', 'JavaScriptFunction', 'JavaScriptNumber', 'JavaScriptIdentifier', 'JavaScriptException'])
call DryMany (s:js['light'],  ['JavaScriptNull', 'JavaScriptBoolean', 'JavaScriptSpecial', 'JavaScriptRegexpCharClass'])
call DryMany (s:js['dark'],   ['JavaScriptStringS', 'JavaScriptStringD', 'JavaScriptRegexpString'])

call DryColor('JavaScriptMessage',      s:n['medium'])
call DryColor('JavaScriptOperator',     s:n['bright'],      { 'gui' : 'bold' })


"
" LiveScript - Cyan
" ------------------

let s:live = s:master['cyan']

call DryMany(s:live['dark'],   [ 'lsString', 'lsWord', 'lsWords', 'lsHeredoc', 'lsRegex' ])
call DryMany(s:live['bright'], [ 'lsExtendedOp', 'lsOperator', 'lsFunctional', 'lsInfixfunc' ])
call DryMany(s:live['light'],  [ 'lsContext', 'lsKeyword', 'lsSpecial', 'lsException', 'lsBoolean' ])

call DryMany(s:n['bright'],    [ 'lsNumber', 'lsGlobal', 'lsKey', 'lsClassname', 'lsKey' ])
call DryMany(s:n['medium'],    [ 'lsIdentifier' ])

call DryColor('lsConditional', s:n['bright'], { 'gui' : 'bold' })


"
" Coffeescript - Red
" ------------------

let s:coffee = s:master['red']

call DryMany(s:coffee['dark'],   [ 'coffeeString', 'coffeeHeredoc', 'coffeeRegex' ])
call DryMany(s:coffee['bright'], [ 'coffeeExtendedOp' ])
call DryMany(s:coffee['light'],  [ 'coffeeKeyword', 'coffeeSpecialVar' ])

call DryMany(s:n['bright'], [ 'coffeeNumber' ])
call DryMany(s:n['medium'], [ 'coffeeDotAccess' ])


"
" Stylesheets - Magenta
" ---------------------

let s:css = s:master['magenta']

call DryColor('cssInclude',     s:css['bright'], { 'gui' : 'bold' })
call DryColor('cssMedia',       s:css['bright'], { 'gui' : 'bold' })
call DryColor('cssMediaType',   s:css['bright'])

call DryColor('cssClassName',   s:n['bright'])
call DryColor('cssIdentifier',  s:n['bright'],   { 'gui' : 'bold' })

call DryColor('cssBoxAttr',     s:n['medium'],   { 'gui' : 'NONE' })
call DryColor('cssRenderAttr',  s:n['medium'],   { 'gui' : 'NONE' })

call DryMany(  s:n['light'],    [ 'cssRenderProp', 'cssBoxProp', 'cssColorProp' ])
call DryMany(s:css['bright'],   [ 'cssValueLength', 'cssValueTime', 'cssValueNumber' ])
call DryMany(s:css['light'],    [ 'cssColor', 'cssTagName', 'cssCommonAttr', 'cssPseudoClassId' ])
call DryMany(s:css['dark'],     [ 'cssStringQQ', 'cssStringQ', 'cssURL'])


"
" PHP - Blue
" ----------

let s:php = s:master['blue']

" call DryColor('phpDefine', s:php['bright'])

call DryMany(s:php['dark'],     [ 'phpStringSingle', 'phpStringDouble' ])
call DryMany(s:php['light'],    [ 'phpBoolean', 'phpMethodsVar', 'phpNumber' ])
call DryMany(s:php['bright'],   [ 'phpStorageClass', 'phpFunctions', 'phpStructure' ])


"
" Interchange - Yellow
" --------------------

let s:json = s:master['yellow']
let s:xml  = s:master['yellow']

call DryMany(s:json['bright'],  [ 'jsonNumber', 'jsonBraces' ])
call DryMany(s:json['dark'],    [ 'jsonStringSQ' ])
call DryMany(s:json['light'],   [ 'jsonNull', 'jsonBoolean' ])

call DryMany(s:n['bright'],     [ 'jsonString' ])

call DryMany(s:xml['bright'],   [ 'xmlTagName', 'xmlEndTag' ])
call DryMany(s:xml['dark'],     [ 'xmlAttrib' ])
call DryMany(s:xml['light'],    [ 'xmlNamespace', 'xmlEntity', 'xmlEntityPunct' ])

call DryMany(s:n['bright'],     [ 'xmlString', 'xmlEqual', 'xmlAttribPunct' ])


"
" Actionscript - Red
" ------------------

let s:as = s:master['red']

call DryMany (s:as['bright'], ['actionscriptAS2', 'actionscriptGlobal', 'actionscriptMember', 'actionscriptFunction', 'actionscriptNumber', 'actionscriptIdentifier', 'actionscriptException'])
call DryMany (s:as['light'],  ['actionscriptObjects', 'actionscriptSpecial'])
call DryMany (s:as['dark'],   ['actionscriptStringS', 'actionscriptStringD', 'actionscriptRegexpString'])


"
" Haskell - Green
" ---------------

let s:hs = s:master['green']

call DryMany (s:hs['bright'], ['hsConSym', 'hsNumber', 'JavaScriptIdentifier', 'JavaScriptException'])
call DryMany (s:hs['light'],  ['hsVarSym', 'ConId'])
call DryMany (s:hs['dark'],   ['hsString'])

call DryColor('hsDelimiter',      s:n['bright'])


"
" C/C++ - Magenta
" ---------------------

let s:cpp = s:master['magenta']

call DryColor('cInclude', s:cpp['light'], { 'gui' : 'bold' })
call DryColor('cPreCondit', s:cpp['light'], { 'gui' : 'bold' })

call DryMany(  s:n['light'],  [ 'cNumbers', 'cNumber', 'cFloat' ])
call DryMany(s:cpp['bright'], [ 'cType' ])
call DryMany(s:cpp['light'],  [ 'cStorageClass', 'cStructure', 'cPreProc', 'cDefine' ])
call DryMany(s:cpp['dark'],   [ 'cString', 'cCharacter' ])

