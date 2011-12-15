scriptencoding utf-8

function! unite#sources#rofi#define()
  return s:source
endfunction

let s:source = {}
let s:source.name = "rofi"
let s:source.syntax = "uniteSource__rofi"
let s:source.default_action = "insert"

function! s:source.gather_candidates(args, context)
	let result = [
\		"(〃ﾉωﾉ)ｷｬｯ",
\		"＞ω＜",
\		"(/ω・＼)ﾁﾗｯ",
\		"(/ω＼*)ｷｬｯ",
\		"(´；ω；`)",
\		"φ(．．)ﾒﾓﾒﾓ",
\		"(´･ω｀･)ｴｯ?",
\		"ヾ(・ω・｀)ﾅﾃﾞﾅﾃﾞ",
\		"(ヾﾉ･∀･`)ﾅｲﾅｲ",
\		"☆(ゝω･)v",
\		"＼（＞ヮ＜）／きゃっほぉ♪",
\		"ヾ(＞ヮ＜*)ﾅﾃﾞﾅﾃﾞ",
\		"ヾ(〃^∇^)ﾉ",
\		"(照>∀<)/",
\		"(*´･ω･)(･ω･｀*)ﾈｰ",
\		"☆*:.｡. o(≧▽≦)o .｡.:*☆"
\	]
	return map(result, "{ 'word' : v:val , 'action__common' : 'insert' }")
endfunction

let s:source.hooks = {}
function! s:source.hooks.on_syntax(args, context)
	syntax match pinkmark /.*/ containedin=uniteSource__rofi contained
	highlight pinkmark guifg=#ff33ff
endfunction


