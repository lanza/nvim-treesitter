; Function bodies
(fn_define
  body: (function_body) @fold)

; Attribute groups
(unnamed_attr_grp) @fold

; Metadata tuples
(metadata_tuple) @fold

; Specialized metadata with arguments
(specialized_md
  (metadata_ref)
  "(" @fold.start
  ")" @fold.end)

; Constant structures
(array_value) @fold
(struct_value) @fold
(packed_struct_value) @fold

; Summary entries with complex values
(summary_entry
  "(" @fold.start
  ")" @fold.end)
