[
  (do_statement)
  (while_statement)
  (repeat_statement)
  (if_statement)
  (for_statement)
  (function_declaration)
  (function_definition)
  (parameters)
  (arguments)
  (table_constructor)
] @fold

; Fold the initial if block (between "if" and first "elseif"/"else"/"end")
(if_statement
  consequence: (block) @fold)

; Fold individual elseif blocks
(elseif_statement
  consequence: (block) @fold)

; Fold individual else blocks
(else_statement
  (block) @fold)

; Also fold the entire elseif/else statements for structure visibility
(elseif_statement) @fold
(else_statement) @fold
