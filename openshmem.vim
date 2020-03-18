" Vim syntax file
" Language: C/C11/C++ for OpenSHMEM 1.5 API
" Maintainer: James A. Ross
" Latest Revision: March 18, 2020

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

""" SHMEM Constants
syn keyword shmemConst SHMEM_THREAD_SINGLE
syn keyword shmemConst SHMEM_THREAD_FUNNELED
syn keyword shmemConst SHMEM_THREAD_SERIALIZED
syn keyword shmemConst SHMEM_THREAD_MULTIPLE
syn keyword shmemConst SHMEM_TEAM_NUM_CONTEXTS
syn keyword shmemConst SHMEM_TEAM_INVALID
syn keyword shmemConst SHMEM_CTX_INVALID
syn keyword shmemConst SHMEM_CTX_SERIALIZED
syn keyword shmemConst SHMEM_CTX_PRIVATE
syn keyword shmemConst SHMEM_CTX_NOSTORE
syn keyword shmemConst SHMEM_SIGNAL_SET
syn keyword shmemConst SHMEM_SIGNAL_ADD
syn keyword shmemConst SHMEM_MALLOC_ATOMICS_REMOTE
syn keyword shmemConst SHMEM_MALLOC_SIGNAL_REMOTE
syn keyword shmemConst SHMEM_MAJOR_VERSION
syn keyword shmemConst SHMEM_MINOR_VERSION
syn keyword shmemConst SHMEM_MAX_NAME_LEN
syn keyword shmemConst SHMEM_VENDOR_STRING
syn keyword shmemConst SHMEM_CMP_EQ
syn keyword shmemConst SHMEM_CMP_NE
syn keyword shmemConst SHMEM_CMP_LT
syn keyword shmemConst SHMEM_CMP_LE
syn keyword shmemConst SHMEM_CMP_GT
syn keyword shmemConst SHMEM_CMP_GE

""" Deprecated/Redundant Constants
syn keyword shmemDeprecated  SHMEM_SYNC_VALUE
syn keyword shmemDeprecated _SHMEM_SYNC_VALUE
syn keyword shmemDeprecated  SHMEM_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_BCAST_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_BCAST_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_REDUCE_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_REDUCE_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_BARRIER_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_BARRIER_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_COLLECT_SYNC_SIZE
syn keyword shmemDeprecated _SHMEM_COLLECT_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_ALLTOALL_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_ALLTOALLS_SYNC_SIZE
syn keyword shmemDeprecated  SHMEM_REDUCE_MIN_WRKDATA_SIZE
syn keyword shmemDeprecated _SHMEM_REDUCE_MIN_WRKDATA_SIZE
syn keyword shmemDeprecated _SHMEM_MAJOR_VERSION
syn keyword shmemDeprecated _SHMEM_MINOR_VERSION
syn keyword shmemDeprecated _SHMEM_MAX_NAME_LEN
syn keyword shmemDeprecated _SHMEM_VENDOR_STRING
syn keyword shmemDeprecated _SHMEM_CMP_EQ
syn keyword shmemDeprecated _SHMEM_CMP_NE
syn keyword shmemDeprecated _SHMEM_CMP_LT
syn keyword shmemDeprecated _SHMEM_CMP_LE
syn keyword shmemDeprecated _SHMEM_CMP_GT
syn keyword shmemDeprecated _SHMEM_CMP_GE

""" Library Handles
syn keyword shmemConst SHMEM_TEAM_WORLD
syn keyword shmemConst SHMEM_TEAM_SHARED
syn keyword shmemConst SHMEM_CTX_DEFAULT

""" OpenSHMEM Types
syn keyword shmemType shmem_cmp_t
syn keyword shmemType shmem_ctx_t
syn keyword shmemType shmem_team_t
syn keyword shmemFunc shmem_team_config_t

""" Library Setup, Exit, and Query Routines
syn keyword shmemFunc shmem_init
syn keyword shmemFunc shmem_my_pe
syn keyword shmemFunc shmem_n_pes
syn keyword shmemFunc shmem_finalize
syn keyword shmemFunc shmem_global_exit
syn keyword shmemFunc shmem_pe_accessible
syn keyword shmemFunc shmem_addr_accessible
syn keyword shmemFunc shmem_ptr
syn keyword shmemFunc shmem_info_get_version
syn keyword shmemFunc shmem_info_get_name
syn keyword shmemFunc shmem_init_thread
syn keyword shmemFunc shmem_query_thread

""" Memory Management Routines
syn keyword shmemFunc shmem_malloc
syn keyword shmemFunc shmem_free
syn keyword shmemFunc shmem_realloc
syn keyword shmemFunc shmem_align
syn keyword shmemFunc shmem_malloc_with_hints
syn keyword shmemFunc shmem_calloc

""" Deprecated Initialization and Memory Magement Routines
syn keyword shmemDeprecated _my_pe
syn keyword shmemDeprecated _num_pes
syn keyword shmemDeprecated shmalloc
syn keyword shmemDeprecated shfree
syn keyword shmemDeprecated shrealloc
syn keyword shmemDeprecated shmemalign
syn keyword shmemDeprecated start_pes

""" Team Management Routines
syn keyword shmemFunc shmem_team_my_pe
syn keyword shmemFunc shmem_team_n_pes
syn keyword shmemFunc shmem_team_get_config
syn keyword shmemFunc shmem_team_translate_pe
syn keyword shmemFunc shmem_team_split_strided
syn keyword shmemFunc shmem_team_split_2d
syn keyword shmemFunc shmem_team_destroy

""" Communication Management Routines
syn keyword shmemFunc shmem_ctx_create
syn keyword shmemFunc shmem_team_create_ctx
syn keyword shmemFunc shmem_ctx_get_team
syn keyword shmemFunc shmem_ctx_destroy

""" Remote Memory Access Routines
syn match shmemFunc '\<shmem_\(put\|p\|iput\|get\|g\|iget\|put_nbi\|get_nbi\)\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(float\|double\|longdouble\|char\|schar\|short\|int\|long\|longlong\|uchar\|ushort\|uint\|ulong\|ulonglong\|int8\|int16\|int32\|int64\|uint8\|uint16\|uint32\|uint64\|size\|ptrdiff\)_\(put\|p\|iput\|get\|g\|iget\|put_nbi\|get_nbi\)\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(put\|iput\|get\|iget\)\(8\|16\|32\|64\|128\)\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(put\|get\)\(8\|16\|32\|64\|128\)_nbi\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(put\|get\)mem\(_nbi\)\{,1}\>'

""" Atomic Memory Operations
syn match shmemFunc '\<shmem_atomic_\(set\|inc\|add\|and\|or\|xor\)\>'
syn match shmemFunc '\<shmem_atomic_\(fetch\|compare_swap\|swap\|fetch_inc\|fetch_add\|fetch_and\|fetch_or\|fetch_xor\)\(_nbi\)\{,1}\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(int\|long\|longlong\|uint\|ulong\|ulonglong\|int32\|int64\|uint32\|uint64\|size\|ptrdiff\)_atomic_\(inc\|add\)\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(int\|long\|longlong\|uint\|ulong\|ulonglong\|int32\|int64\|uint32\|uint64\|size\|ptrdiff\)_atomic_\(compare_swap\|fetch_inc\|fetch_add\)\(_nbi\)\{,1}\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(int\|long\|longlong\|uint\|ulong\|ulonglong\|int32\|int64\|uint32\|uint64\|size\|ptrdiff\|float\|double\)_atomic_\(set\)\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(int\|long\|longlong\|uint\|ulong\|ulonglong\|int32\|int64\|uint32\|uint64\|size\|ptrdiff\|float\|double\)_atomic_\(fetch\|swap\)\(_nbi\)\{,1}\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(uint\|ulong\|ulonglong\|int32\|int64\|uint32\|uint64\)_atomic_\(and\|or\|xor\)\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(uint\|ulong\|ulonglong\|int32\|int64\|uint32\|uint64\)_atomic_\(fetch_and\|fetch_or\|fetch_xor\)\(_nbi\)\{,1}\>'

""" Deprecated Atomic Memory Operations
syn match shmemDeprecated '\<shmem_\(fetch\|set\|cswap\|finc\|inc\|fadd\|add\|swap\)\>'
syn match shmemDeprecated '\<shmem_\(int\|long\|longlong\)_\(cswap\|finc\|inc\|fadd\|add\)\>'
syn match shmemDeprecated '\<shmem_\(float\|double\|int\|long\|longlong\)_\(fetch\|set\|swap\)\>'

""" Signaling Operations
syn match shmemFunc '\<shmem_put_signal\(_nbi\)\{,1}\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}\(float\|double\|longdouble\|char\|schar\|short\|int\|long\|longlong\|uchar\|ushort\|uint\|ulong\|ulonglong\|int8\|int16\|int32\|int64\|uint8\|uint16\|uint32\|uint64\|size\|ptrdiff\)_put_signal\(_nbi\)\{,1}\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}put\(8\|16\|32\|64\|128\)_signal\(_nbi\)\{,1}\>'
syn match shmemFunc '\<shmem_\(ctx_\)\{,1}putmem_signal\(_nbi\)\{,1}\>'
syn keyword shmemFunc shmem_signal_fetch

""" Collective Routines
syn keyword shmemFunc shmem_barrier_all
syn keyword shmemFunc shmem_sync
syn keyword shmemFunc shmem_team_sync
syn keyword shmemFunc shmem_sync_all
syn match shmemFunc '\<shmem_\(alltoall\|alltoalls\|broadcast\|collect\|fcollect\)\(mem\)\{,1}\>'

""" Deprecated Collective Routines
syn keyword shmemDeprecated shmem_barrier
syn match shmemDeprecated '\<shmem_\(alltoall\|alltoalls\|broadcast\|collect\|fcollect\)\(32\|64\)\>'

""" Reductions
syn match shmemFunc '\<shmem_\(float\|double\|longdouble\|char\|schar\|short\|int\|long\|longlong\|uchar\|ushort\|uint\|ulong\|ulonglong\|int8\|int16\|int32\|int64\|uint8\|uint16\|uint32\|uint64\|size\|ptrdiff\)_\(alltoall\|alltoalls\|broadcast\|collect\|fcollect\)\>'
syn match shmemFunc '\<shmem_\(and\|or\|xor\|max\|min\|sum\|prod\)_reduce\>'
syn match shmemFunc '\<shmem_\(uchar\|ushort\|uint\|ulong\|ulonglong\|int8\|int16\|int32\|int64\|uint8\|uint16\|uint32\|uint64\|size\)_\(and\|or\|xor\)_reduce\>'
syn match shmemFunc '\<shmem_\(char\|schar\|short\|int\|long\|longlong\|ptrdiff\|uchar\|ushort\|uint\|ulong\|ulonglong\|int8\|int16\|int32\|int64\|uint8\|uint16\|uint32\|uint64\|size\|float\|double\|longdouble\)_\(max\|min\)_reduce\>'
syn match shmemFunc '\<shmem_\(char\|schar\|short\|int\|long\|longlong\|ptrdiff\|uchar\|ushort\|uint\|ulong\|ulonglong\|int8\|int16\|int32\|int64\|uint8\|uint16\|uint32\|uint64\|size\|float\|double\|longdouble\|complexd\|complexf\)_\(sum\|prod\)_reduce\>'

""" Deprecated Reductions
syn match shmemDeprecated '\<shmem_\(short\|int\|long\|longlong\)_\(and\|or\|xor\)_to_all\>'
syn match shmemDeprecated '\<shmem_\(short\|int\|long\|longlong\|float\|double\|longdouble\)_\(max\|min\)_to_all\>'
syn match shmemDeprecated '\<shmem_\(short\|int\|long\|longlong\|float\|double\|longdouble\|complexd\|complexf\)_\(sum\|prod\)_to_all\>'

""" Point-To-Point Synchronization Routines
syn match shmemFunc '\<shmem_\(short_\|int_\|long_\|longlong_\|ushort_\|uint_\|ulong_\|ulonglong_\|int32_\|int64_\|uint32_\|uint64_\|size_\|ptrdiff_\)\{,1}\(wait_until\|test\)\(_all\|_any\|_some\|_all_vector\|_any_vector\|_some_vector\)\{,1}\>'
syn keyword shmemFunc shmem_signal_wait_until

""" Deprecated Point-To-Point Synchronization Routines
syn match shmemDeprecated '\<shmem_\(short_\|int_\|long_\|longlong_\)\{,1}wait\>'

""" Memory Ordering Routines
syn keyword shmemFunc shmem_fence
syn keyword shmemFunc shmem_ctx_fence
syn keyword shmemFunc shmem_quiet
syn keyword shmemFunc shmem_ctx_quiet

""" Distributed Locking Routines
syn keyword shmemFunc shmem_clear_lock
syn keyword shmemFunc shmem_set_lock
syn keyword shmemFunc shmem_test_lock

""" Deprecated Cache Management
syn keyword shmemDeprecated shmem_clear_cache_inv
syn keyword shmemDeprecated shmem_set_cache_inv
syn keyword shmemDeprecated shmem_clear_cache_line_inv
syn keyword shmemDeprecated shmem_set_cache_line_inv
syn keyword shmemDeprecated shmem_udcflush
syn keyword shmemDeprecated shmem_udcflush_line

""" Profiling Interface
syn keyword shmemFunc shmem_pcontrol

let b:current_syntax = "openshmem"

hi def link shmemConst Constant
hi def link shmemFunc  Function
hi def link shmemType  Type
hi shmemDeprecated ctermbg=red guibg=#ff0000 ctermfg=white guifg=#ffffff
