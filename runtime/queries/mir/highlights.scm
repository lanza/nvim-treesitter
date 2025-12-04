; Highlights for LLVM Machine IR (MIR)

; Flags
(operand_flag) @keyword.modifier

; Opcodes (machine instructions)
(opcode) @function

; Registers
(register) @variable.builtin

; Virtual registers
(virtual_register) @variable

; Block labels
(block_label) @label
(block_ref) @label

; IR block references
(ir_block_ref) @label

; Function names
(name_property
  name: (bare_identifier) @function.definition)

; Global references
(global_ref) @constant

; Numbers
(number) @number
(hex_number) @number

; Strings
(quoted_string) @string

; Booleans
(boolean) @constant.builtin

; Property keys (YAML-like)
(property_key) @property

; Memory operation types
(mem_op_kind) @keyword.storage

; Memory locations
(ir_value_ref) @variable.special
(frame_index) @variable.special
(fixed_stack) @variable.special
(cpi_ref) @variable.special

; Probabilities in successors
(probability
  (hex_number) @number.float)

; Metadata references
(metadata_ref) @attribute

; Punctuation
[
  ":"
  ","
  "="
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket
