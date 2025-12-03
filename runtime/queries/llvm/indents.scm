; Indent function bodies
(function_body
  "{" @indent
  "}" @dedent)

; Indent attribute groups
(unnamed_attr_grp
  "{" @indent
  "}" @dedent)

; Indent metadata tuples
(metadata_tuple
  "{" @indent
  "}" @dedent)

; Indent specialized metadata arguments
(specialized_md
  "(" @indent
  ")" @dedent)

; Indent struct types
(struct_type
  "{" @indent
  "}" @dedent)

(packed_struct_type
  "<{" @indent
  "}>" @dedent)

; Indent array and vector types
(array_type
  "[" @indent
  "]" @dedent)

(vector_type
  "<" @indent
  ">" @dedent)

; Indent constant values
(array_value
  "[" @indent
  "]" @dedent)

(struct_value
  "{" @indent
  "}" @dedent)

(packed_struct_value
  "<{" @indent
  "}>" @dedent)

(vector_value
  "<" @indent
  ">" @dedent)

; Indent argument lists
(argument_list
  "(" @indent
  ")" @dedent)

; Indent summary entries
(summary_entry
  "(" @indent
  ")" @dedent)

; Align brackets properly
["(" "[" "{" "<" "<{"] @indent
[")" "]" "}" ">" "}>"] @dedent
