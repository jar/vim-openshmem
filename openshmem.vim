" Vim syntax file
" Language: C for OpenSHMEM 1.3 API
" Maintainer: James A. Ross
" Latest Revision: March 18, 2016

if version < 600 
	syntax clear
elseif exists ("b:current_syntax")
	finish
endif

" Read the C syntax first
if version < 600 
	source <sfile>:p:h/c.vim
else
	runtime! syntax/c.vim
endif

" SHMEM constants
syn keyword shmemConst SHMEM_MAJOR_VERSION
syn keyword shmemConst SHMEM_MINOR_VERSION
syn keyword shmemConst SHMEM_MAX_NAME_LEN
syn keyword shmemConst SHMEM_VENDOR_STRING
syn keyword shmemConst SHMEM_INTERNAL_F2C_SCALE
syn keyword shmemConst SHMEM_BCAST_SYNC_SIZE
syn keyword shmemConst SHMEM_BARRIER_SYNC_SIZE
syn keyword shmemConst SHMEM_REDUCE_SYNC_SIZE
syn keyword shmemConst SHMEM_REDUCE_MIN_WRKDATA_SIZE
syn keyword shmemConst SHMEM_SYNC_VALUE
syn keyword shmemConst SHMEM_COLLECT_SYNC_SIZE

" Redundant constants for backward compatibility
syn keyword shmemDeprecated _SHMEM_MAJOR_VERSION
syn keyword shmemDeprecated _SHMEM_MINOR_VERSION
syn keyword shmemDeprecated _SHMEM_MAX_NAME_LEN
syn keyword shmemDeprecated _SHMEM_VENDOR_STRING
syn keyword shmemDeprecated _SHMEM_INTERNAL_F2C_SCALE
syn keyword shmemDeprecated _SHMEM_BCAST_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_BARRIER_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_REDUCE_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_REDUCE_MIN_WRKDATA_SIZE
syn keyword shmemDeprecated _SHMEM_SYNC_VALUE
syn keyword shmemDeprecated _SHMEM_COLLECT_SYNC_SIZE

" Compare enum constants
syn keyword shmemConst SHMEM_CMP_EQ
syn keyword shmemConst SHMEM_CMP_NE
syn keyword shmemConst SHMEM_CMP_GT
syn keyword shmemConst SHMEM_CMP_LE
syn keyword shmemConst SHMEM_CMP_LT
syn keyword shmemConst SHMEM_CMP_GE

" Library Setup, Exit, and Query Routines
syn keyword shmemFunc shmem_init
syn keyword shmemFunc shmem_finalize
syn keyword shmemFunc shmem_global_exit
syn keyword shmemFunc shmem_my_pe
syn keyword shmemFunc shmem_n_pes
syn keyword shmemFunc shmem_pe_accessible
syn keyword shmemFunc shmem_addr_accessible
syn keyword shmemFunc shmem_info_get_version
syn keyword shmemFunc shmem_info_get_name
syn keyword shmemFunc shmem_ptr

" Deprecated Routines
syn keyword shmemDeprecated _my_pe
syn keyword shmemDeprecated _num_pes
syn keyword shmemDeprecated shmalloc
syn keyword shmemDeprecated shfree
syn keyword shmemDeprecated shrealloc
syn keyword shmemDeprecated shmemalign
syn keyword shmemDeprecated start_pes

" Memory Management Routines
syn keyword shmemFunc shmem_malloc
syn keyword shmemFunc shmem_align
syn keyword shmemFunc shmem_free
syn keyword shmemFunc shmem_realloc

" Remote Memory Access Routines
syn match shmemFunc "shmem_\(i\)\=\(put\|get\)"
syn match shmemFunc "shmem_\(char\|short\|int\|long\|longlong\|float\|double\|longdouble\)_\(i\)\=\(put\|get\)"
syn match shmemFunc "shmem_\(i\)\=\(put\|get\)\(8\|16\|32\|64\|128\)"
syn match shmemFunc "shmem_\(put\|get\)mem"
syn keyword shmemFunc shmem_p shmem_g
syn keyword shmemFunc shmem_char_p shmem_short_p shmem_int_p shmem_long_p shmem_longlong_p shmem_float_p shmem_double_p shmem_longdouble_p
syn keyword shmemFunc shmem_char_g shmem_short_g shmem_int_g shmem_long_g shmem_longlong_g shmem_float_g shmem_double_g shmem_longdouble_g

" Non-blocking Remote Memory Access Routines
syn match shmemFunc "shmem_\(put\|get\)_nbi"
syn match shmemFunc "shmem_\(char\|short\|int\|long\|longlong\|float\|double\|longdouble\)_\(put\|get\)_nbi"
syn match shmemFunc "shmem_\(put\|get\)\(8\|16\|32\|64\|128\)_nbi"
syn match shmemFunc "shmem_\(put\|get\)mem_nbi"

" Atomic Memory Operations
syn match shmemFunc "shmem_\(finc\|inc\|fadd\|add\|cswap\|swap\|fetch\|set\)"
syn match shmemFunc "shmem_\(int\|long\|longlong\)_\(finc\|inc\|fadd\|add\|cswap\|swap\|fetch\|set\)"
syn match shmemFunc "shmem_\(float\|double\)_\(swap\|fetch\|set\)"

" Collective Routines
syn match shmemFunc "shmem_barrier\(_all\)\="
syn match shmemFunc "shmem_broadcast\(32\|64\)"
syn match shmemFunc "shmem_fcollect\(32\|64\)"
syn match shmemFunc "shmem_collect\(32\|64\)"
syn match shmemFunc "shmem_alltoall\(32\|64\)"
syn match shmemFunc "shmem_alltoalls\(32\|64\)"
syn match shmemFunc "shmem_\(complexf\|complexd\|float\|double\|longdouble\|short\|int\|long\|longlong\)_\(sum\|prod\)_to_all"
syn match shmemFunc "shmem_\(short\|int\|long\|longlong\)_\(and\|or\|xor\)_to_all"
syn match shmemFunc "shmem_\(float\|double\|longdouble\|short\|int\|long\|longlong\)_\(max\|min\)_to_all"

" Point-To-Point Synchronization Routines
syn match shmemFunc "shmem_wait\(_until\)\="
syn match shmemFunc "shmem_\(short\|int\|long\|longlong\)_wait\(_until\)\="

" Memory Ordering Routines
syn keyword shmemFunc shmem_fence
syn keyword shmemFunc shmem_quiet

" Distributed Locking Routines
syn keyword shmemFunc shmem_clear_lock
syn keyword shmemFunc shmem_set_lock
syn keyword shmemFunc shmem_test_lock

" Cache Management
syn keyword shmemDeprecated shmem_clear_cache_inv
syn keyword shmemDeprecated shmem_set_cache_inv
syn keyword shmemDeprecated shmem_clear_cache_line_inv
syn keyword shmemDeprecated shmem_set_cache_line_inv
syn keyword shmemDeprecated shmem_udcflush
syn keyword shmemDeprecated shmem_udcflush_line

let b:current_syntax = "openshmem"

hi def link shmemConst Constant
hi def link shmemFunc  Function
hi shmemDeprecated ctermbg=red guibg=#ff0000 ctermfg=white guifg=#ffffff
