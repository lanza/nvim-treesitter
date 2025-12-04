; Locals for LLVM Machine IR (MIR)

; Scopes
(function_definition) @local.scope
(basic_block) @local.scope

; Function name definitions
(name_property
  name: (bare_identifier) @local.definition.function)

; Register definitions (in def_list before =)
(def_list
  (operand
    (operand_value
      (register) @local.definition.var)))

; Virtual register definitions
(def_list
  (operand
    (operand_value
      (virtual_register) @local.definition.var)))

; Block label definitions
(basic_block
  (block_label) @local.definition)

; References
(register) @local.reference
(virtual_register) @local.reference
(block_ref) @local.reference
(global_ref) @local.reference
