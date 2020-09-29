.section    __TEXT, __text, regular, pure_instructions 
    .macosx_version_min 10, 12 
    .globl    _main 
    .align    4, 0x90 
_main:                                  ## @main 
    .cfi_startproc 
## BB#0: 
    pushq    %rbp 
Ltmp0: 
    .cfi_def_cfa_offset 16 
Ltmp1: 
    .cfi_offset %rbp, -16 
    movq    %rsp, %rbp 
Ltmp2: 
    .cfi_def_cfa_register %rbp 
    subq    $16, %rsp 
    leaq    L_.str(%rip), %rdi 
    leaq    _s(%rip), %rsi 
    movl    $2000, -4(%rbp)         ## imm = 0x7D0 
    movl    $17, -8(%rbp) 
    movl    -4(%rbp), %eax 
    addl    -8(%rbp), %eax 
    movl    %eax, %edx 
    movb    $0, %al 
    callq    _printf 
    xorl    %edx, %edx 
    movl    %eax, -12(%rbp)         ## 4-byte Spill 
    movl    %edx, %eax 
    addq    $16, %rsp 
    popq    %rbp 
    retq 
    .cfi_endproc 
  
    .section    __DATA, __data 
    .globl    _s                      ## @s 
_s: 
    .asciz    "GeeksforGeeks"
  
    .section    __TEXT, __cstring, cstring_literals 
L_.str:                                 ## @.str 
    .asciz    "%s %d \n"
  
  
.subsections_via_symbols 