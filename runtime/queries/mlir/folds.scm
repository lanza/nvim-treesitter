; Regions are the primary folding unit in MLIR
(region) @fold

; Function definitions
(func_dialect
  body: (region)) @fold

(llvm_dialect
  body: (region)) @fold

(cir_dialect
  body: (region)) @fold

; CIR if/else as a unit
(cir_dialect
  then: (region)
  else: (region)) @fold

; CIR conditionals - then and else regions
(cir_dialect
  then: (region)) @fold

(cir_dialect
  else: (region)) @fold

; Module
(builtin_dialect
  body: (region)) @fold

; Control flow with regions
(scf_dialect
  body: (region)) @fold

(scf_dialect
  trueblk: (region)
  falseblk: (region)) @fold

(affine_dialect
  body: (region)) @fold

(affine_dialect
  trueblk: (region)
  falseblk: (region)) @fold

; Linalg operations with regions
(linalg_dialect
  body: (region)) @fold

; Blocks
(block) @fold

; Comments
(comment)+ @fold

; Dictionary attributes
(dictionary_attribute) @fold
