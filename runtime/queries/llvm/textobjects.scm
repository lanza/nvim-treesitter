; Functions
(fn_define) @function.outer

(fn_define
  body: (function_body) @function.inner)

; Parameters (for navigation between function arguments)
(argument) @parameter.inner

; Instructions (for statement-level navigation)
(instruction) @statement.outer

; Comments
(comment) @comment.outer

; Constant structures
[
  (array_value)
  (struct_value)
  (packed_struct_value)
  (vector_value)
] @block.outer

; Metadata blocks
(metadata_tuple) @block.outer
(specialized_md) @block.outer

; Attribute groups
(unnamed_attr_grp) @block.outer

; Types (for navigating type definitions)
(type) @type.outer

; Basic blocks (approximation - instructions between labels or start/end of function)
; Note: This is a simplified version; true basic block detection would require
; more sophisticated queries or LSP support
(label) @label.outer
