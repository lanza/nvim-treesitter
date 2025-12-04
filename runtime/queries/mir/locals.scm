; Locals for LLVM Machine IR (MIR)

; Function definitions create a new scope
(function_definition) @local.scope

; Basic blocks create a new scope
(basic_block) @local.scope

; Register definitions
(def_list
  (operand
    (operand_value
      (register) @local.definition)))

; Virtual register definitions
(def_list
  (operand
    (operand_value
      (virtual_register) @local.definition)))
