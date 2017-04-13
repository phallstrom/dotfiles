syn match   gitcommitSummary	"^.\{0,65\}" contained containedin=gitcommitFirstLine nextgroup=gitcommitOverflow contains=@Spell
