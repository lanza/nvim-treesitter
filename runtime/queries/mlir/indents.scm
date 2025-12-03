; Regions increase indent
(region) @indent.begin

; Blocks in regions
(block) @indent.begin
(entry_block) @indent.begin

; Closing braces end indent
(region
  "}" @indent.end)

; Branch on closing brace
"}" @indent.branch

; Argument lists align
(func_arg_list) @indent.begin
(block_arg_list) @indent.begin

; Dictionary attributes
(dictionary_attribute) @indent.begin

; Brackets for alignment
([
  (func_arg_list)
  (block_arg_list)
] @indent.align
  (#set! indent.open_delimiter "(")
  (#set! indent.close_delimiter ")"))

; Comments auto-indent
(comment) @indent.auto
