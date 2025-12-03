; Inject assembly syntax into module asm blocks
((module_asm
  (asm) @injection.content)
 (#set! injection.language "asm"))

; Inject assembly syntax into inline asm calls
((inline_asm
  (asm) @injection.content)
 (#set! injection.language "asm"))

; Comments can benefit from comment-specific highlighting
((comment) @injection.content
 (#set! injection.language "comment"))
