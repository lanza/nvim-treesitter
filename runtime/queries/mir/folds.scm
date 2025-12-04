; Folds for LLVM Machine IR (MIR)

; Fold function definitions
(function_definition) @fold

; Fold basic blocks (when they have multiple instructions)
(basic_block) @fold

; Fold embedded IR section
(embedded_ir) @fold

; Fold memory operands
(mem_operand) @fold

; Fold liveins property with multiple entries
(liveins_property) @fold
