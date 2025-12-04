; Indents for LLVM Machine IR (MIR)

; Function body starts indentation
(body) @indent.begin

; Basic blocks create indentation context
(basic_block) @indent.begin

; Liveins entries are indented
(liveins_property) @indent.begin

; Memory operand contents are indented
(mem_operand
  "(" @indent.begin
  ")" @indent.end)

; Closing delimiters reset indentation
[
  "..."
] @indent.end

; Branch points for alignment
[
  ")"
  "}"
  "]"
] @indent.branch

; Zero indent for document markers
[
  "---"
  "..."
] @indent.zero
