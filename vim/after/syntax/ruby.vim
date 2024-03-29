"" Start of YARD syntax highlighting:
"
"syn match yardComment "#.*" contains=yardLink,yardParamTag,yardOptionTag,yardYieldTag,yardReturnTag,yardRaiseTag,yardGenericTag
"syn region yardMultilineComment start="\%(\%(^\s*#.*\n\)\@<!\%(^\s*#.*\n\)\)\%(\(^\s*#.*\n\)\{1,}\)\@=" end="\%(^\s*#.*\n\)\@<=\%(^\s*#.*\n\)\%(^\s*#\)\@!" contains=yardComment transparent fold keepend
"syn region yardLink start="{" end="}" contained
"syn match yardType "\%(\%([.@$]\@<!\.\)\@<!\<\|::\)\_s*\zs\u\w*\%(\>\|::\)\@=\%(\s*(\)\@!" contained
"syn match yardRespondsTo "#\h\w*" contained
"syn match yardArgsComma +,\s*+ nextgroup=yardType,yardRespondsTo,yardKeyword
"syn region yardArgs start="\[" end="\]" contains=yardType,yardRespondsTo,yardKeyword,yardArgsComma skipwhite
"syn match yardParamTag +@\(yieldparam\|param\)+ contained nextgroup=yardArgs skipwhite
"syn match yardOptionTag "@option" contained nextgroup=yardKeyword skipwhite
"syn match yardYieldTag "@yield\s" contained nextgroup=yardArgs skipwhite
"syn match yardReturnTag "@return" contained nextgroup=yardArgs skipwhite
"syn match yardRaiseTag "@raise" contained nextgroup=yardArgs skipwhite
"syn match yardGenericTag +@\(since\|see\|deprecated\|todo\|api\)+ contained skipwhite
"
"syn match yardRaiseTag "@path" contained nextgroup=yardArgs skipwhite
"syn match yardRaiseTag "@parameter" contained nextgroup=yardArgs skipwhite
"syn match yardRaiseTag "@response" contained nextgroup=yardArgs skipwhite
"syn match yardRaiseTag "@error_message" contained nextgroup=yardArgs skipwhite
"
"hi def link yardComment	Comment
"hi def link yardLink		Special
"hi def link yardArgsComma	Comment
"hi def link yardArgs		Comment
"hi def link yardType		Type
"hi def link yardKeyword	Type
"hi def link yardParamTag	Define
"hi def link yardOptionTag	Define
"hi def link yardYieldTag	Define
"hi def link yardReturnTag	Define
"hi def link yardRaiseTag	Define
"hi def link yardGenericTag	Define
