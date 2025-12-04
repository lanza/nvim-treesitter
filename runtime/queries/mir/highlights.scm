; Highlights for LLVM Machine IR (MIR)

; Opcodes (machine instructions)
(opcode) @function.call

; Operand flags/modifiers
(operand_flag) @keyword.modifier

; Registers
(register) @variable.builtin

; Virtual registers
(virtual_register) @variable

; Block labels
(block_label) @label

; Block references
(block_ref) @label

; IR block references
(ir_block_ref) @label

; Function names
(name_property
  name: (bare_identifier) @function)

; Global references
(global_ref
  (bare_identifier) @constant)

(global_ref
  (quoted_string) @constant)

; External symbols
(external_symbol
  (bare_identifier) @constant)

; Numbers
(number) @number

(hex_number) @number

; Probabilities in successors
(probability
  (hex_number) @number)

; Strings
(quoted_string) @string

; Booleans
[
  (boolean)
] @boolean

; Property keys (YAML-like)
(property_key) @property

; Memory operation types
(mem_op_kind) @keyword.storage

; Memory locations
(ir_value_ref) @variable.member
(frame_index) @variable.member
(fixed_stack) @variable.member
(cpi_ref) @variable.member

; Metadata references
(metadata_ref) @attribute

; Debug location
(debug_location_keyword) @keyword

; Target flags
(target_flags) @attribute

; Keywords
[
  "name"
  "liveins"
  "successors"
  "reg"
  "virtual-reg"
] @keyword

; Memory operation keywords
[
  "from"
  "into"
  "on"
  "align"
  "basealign"
  "addrspace"
] @keyword

; Punctuation delimiters
[
  ":"
  ","
  "="
  "::"
] @punctuation.delimiter

; Brackets
[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

; Document structure delimiters
[
  "---"
  "..."
] @punctuation.special

; Special punctuation
[
  "@"
  "&"
] @punctuation.special
