(type) @type
(type_keyword) @type.builtin

(type [
    (local_var)
    (global_var)
  ] @type)

(argument) @variable.parameter

(_ inst_name: _ @keyword.operator)

[
  "catch"
  "filter"
] @keyword.operator

[
  "to"
  "nneg"
  "nuw"
  "nsw"
  "exact"
  "disjoint"
  "unwind"
  "from"
  "cleanup"
  "swifterror"
  "volatile"
  "inbounds"
  "inrange"
] @keyword.control
(icmp_cond) @keyword.control
(fcmp_cond) @keyword.control

(fast_math) @keyword.control

(_ callee: _ @function)
(function_header name: _ @function)

[
  "declare"
  "define"
] @keyword.function
(calling_conv) @keyword.function

[
  "target"
  "triple"
  "datalayout"
  "source_filename"
  "addrspace"
  "blockaddress"
  "align"
  "syncscope"
  "within"
  "uselistorder"
  "uselistorder_bb"
  "module"
  "asm"
  "sideeffect"
  "alignstack"
  "inteldialect"
  "unwind"
  "type"
  "global"
  "constant"
  "externally_initialized"
  "alias"
  "ifunc"
  "section"
  "comdat"
  "thread_local"
  "localdynamic"
  "initialexec"
  "localexec"
  "any"
  "exactmatch"
  "largest"
  "nodeduplicate"
  "samesize"
  "distinct"
  "attributes"
  "vscale"
  "no_cfi"
] @keyword

(linkage_aux) @keyword
(dso_local) @keyword
(visibility) @keyword
(dll_storage_class) @keyword
(unnamed_addr) @keyword
(attribute_name) @keyword

(function_header [
    (linkage)
    (calling_conv)
    (unnamed_addr)
  ] @keyword.function)

(number) @constant.numeric.integer
(comment) @comment
(string) @string
(cstring) @string
(label) @label
(_ inst_name: "ret" @keyword.control.return)
(float) @constant.numeric.float

[
  (local_var)
  (global_var)
] @variable

[
  (struct_value)
  (array_value)
  (vector_value)
] @constructor

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  "<"
  ">"
  "<{"
  "}>"
] @punctuation.bracket

[
  ","
  ":"
] @punctuation.delimiter

[
  "="
  "|"
  "x"
  "..."
] @operator

[
  "true"
  "false"
] @constant.builtin.boolean

[
  "undef"
  "poison"
  "null"
  "none"
  "zeroinitializer"
] @constant.builtin

; Metadata references and names
(metadata_ref) @property
(metadata_name) @property

; Intrinsics (LLVM built-in functions)
(global_var) @function.builtin
  (#match? @function.builtin "^@llvm\\.")

; Memory operation instructions
(_ inst_name: "alloca" @keyword.operator.memory)
(_ inst_name: "load" @keyword.operator.memory)
(_ inst_name: "store" @keyword.operator.memory)
(_ inst_name: "fence" @keyword.operator.memory)
(_ inst_name: "cmpxchg" @keyword.operator.memory)
(_ inst_name: "atomicrmw" @keyword.operator.memory)
(_ inst_name: "getelementptr" @keyword.operator.memory)

; Control flow instructions
(_ inst_name: "br" @keyword.control)
(_ inst_name: "switch" @keyword.control)
(_ inst_name: "indirectbr" @keyword.control)
(_ inst_name: "invoke" @keyword.control)
(_ inst_name: "resume" @keyword.control)
(_ inst_name: "catchswitch" @keyword.control)
(_ inst_name: "catchret" @keyword.control)
(_ inst_name: "cleanupret" @keyword.control)
(_ inst_name: "unreachable" @keyword.control)
(_ inst_name: "callbr" @keyword.control)

; Comparison instructions
(_ inst_name: "icmp" @keyword.operator.comparison)
(_ inst_name: "fcmp" @keyword.operator.comparison)

; Vector operations
(_ inst_name: "extractelement" @keyword.operator.vector)
(_ inst_name: "insertelement" @keyword.operator.vector)
(_ inst_name: "shufflevector" @keyword.operator.vector)

; Aggregate operations
(_ inst_name: "extractvalue" @keyword.operator.aggregate)
(_ inst_name: "insertvalue" @keyword.operator.aggregate)

; Type conversion instructions
(cast_inst) @keyword.operator.cast

; Other instructions
(_ inst_name: "phi" @keyword.operator.phi)
(_ inst_name: "select" @keyword.operator.select)
(_ inst_name: "call" @function.call)
(_ inst_name: "freeze" @keyword.operator)
(_ inst_name: "fneg" @keyword.operator)
(_ inst_name: "va_arg" @keyword.operator)
(_ inst_name: "landingpad" @keyword.operator.exception)
(_ inst_name: "catchpad" @keyword.operator.exception)
(_ inst_name: "cleanuppad" @keyword.operator.exception)

; Atomic orderings
(atomic_ordering) @keyword.modifier

; Binary operation keywords (arithmetic)
[
  "add"
  "sub"
  "mul"
  "udiv"
  "sdiv"
  "urem"
  "srem"
  "shl"
  "lshr"
  "ashr"
  "and"
  "or"
  "xor"
  "fadd"
  "fsub"
  "fmul"
  "fdiv"
  "frem"
] @keyword.operator.arithmetic

; Atomic binary operations
[
  "xchg"
  "nand"
  "max"
  "min"
  "umax"
  "umin"
] @keyword.operator.atomic

; Summary references (ThinLTO)
(summary_ref) @property

; Comdat references
(comdat_ref) @property

; Attribute references
(attr_ref) @property

(ERROR) @error
