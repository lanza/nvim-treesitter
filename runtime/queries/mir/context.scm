; Context for LLVM Machine IR (MIR)
; Shows function and basic block headers as sticky context

; Function definitions - show function name as context
(function_definition
  (function_property)+ @context.end) @context

; Basic blocks - show block label and headers as context
(basic_block
  (block_label)
  (instruction) @context.end) @context
