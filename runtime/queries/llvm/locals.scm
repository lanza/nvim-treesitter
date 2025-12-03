; ============================================================================
; Top-level definitions (module scope)
; ============================================================================

(module) @local.scope

; Function definitions
(fn_define
  (function_header
    (global_var) @local.definition.function))

; Function declarations
(declare
  (function_header
    (global_var) @local.definition.function))

; Global variables and constants
(global_global
  (global_var) @local.definition.constant)

; Type aliases
(global_type
  (local_var) @local.definition.type)

; Aliases
(alias
  . (global_var) @local.definition.constant)

; Indirect functions
(ifunc
  (global_var) @local.definition.function)

; Comdat definitions
(comdat (comdat_ref) @local.definition.constant)

(unnamed_attr_grp (attr_ref) @local.definition.var)

; Global metadata definitions like !llvm.module.flags (will need to enable "Constant" filter)
(global_metadata
  (metadata_ref) @local.definition.var)

; ============================================================================
; Function-level definitions (local scope)
; ============================================================================

; Function definitions create scopes
; (function_body) @local.scope

; Local variable definitions (SSA values on left side of assignment)
; (instruction
;   (local_var) @local.var)

; Function parameters are definitions
; (argument
;   (value
;     (var
;       (local_var) @local.parameter)))

; Label definitions
; (label) @local.label

; Local variable references (when used as values)
; This matches local_var nodes that are not in definition positions
; (value (var (local_var)) @local.reference)
