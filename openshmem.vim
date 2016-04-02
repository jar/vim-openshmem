" Vim syntax file
" Language: C for OpenSHMEM 1.3 API
" Maintainer: James A. Ross
" Latest Revision: April 1, 2016

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
syn keyword shmemFunc shmem_put
syn keyword shmemFunc shmem_get
syn keyword shmemFunc shmem_iput
syn keyword shmemFunc shmem_iget
syn keyword shmemFunc shmem_p
syn keyword shmemFunc shmem_g
syn keyword shmemFunc shmem_char_put
syn keyword shmemFunc shmem_char_get
syn keyword shmemFunc shmem_char_iput
syn keyword shmemFunc shmem_char_iget
syn keyword shmemFunc shmem_char_p
syn keyword shmemFunc shmem_char_g
syn keyword shmemFunc shmem_short_put
syn keyword shmemFunc shmem_short_get
syn keyword shmemFunc shmem_short_iput
syn keyword shmemFunc shmem_short_iget
syn keyword shmemFunc shmem_short_p
syn keyword shmemFunc shmem_short_g
syn keyword shmemFunc shmem_int_put
syn keyword shmemFunc shmem_int_get
syn keyword shmemFunc shmem_int_iput
syn keyword shmemFunc shmem_int_iget
syn keyword shmemFunc shmem_int_p
syn keyword shmemFunc shmem_int_g
syn keyword shmemFunc shmem_long_put
syn keyword shmemFunc shmem_long_get
syn keyword shmemFunc shmem_long_iput
syn keyword shmemFunc shmem_long_iget
syn keyword shmemFunc shmem_long_p
syn keyword shmemFunc shmem_long_g
syn keyword shmemFunc shmem_longlong_put
syn keyword shmemFunc shmem_longlong_get
syn keyword shmemFunc shmem_longlong_iput
syn keyword shmemFunc shmem_longlong_iget
syn keyword shmemFunc shmem_longlong_p
syn keyword shmemFunc shmem_longlong_g
syn keyword shmemFunc shmem_float_put
syn keyword shmemFunc shmem_float_get
syn keyword shmemFunc shmem_float_iput
syn keyword shmemFunc shmem_float_iget
syn keyword shmemFunc shmem_float_p
syn keyword shmemFunc shmem_float_g
syn keyword shmemFunc shmem_double_put
syn keyword shmemFunc shmem_double_get
syn keyword shmemFunc shmem_double_iput
syn keyword shmemFunc shmem_double_iget
syn keyword shmemFunc shmem_double_p
syn keyword shmemFunc shmem_double_g
syn keyword shmemFunc shmem_longdouble_put
syn keyword shmemFunc shmem_longdouble_get
syn keyword shmemFunc shmem_longdouble_iput
syn keyword shmemFunc shmem_longdouble_iget
syn keyword shmemFunc shmem_longdouble_p
syn keyword shmemFunc shmem_longdouble_g
syn keyword shmemFunc shmem_put8
syn keyword shmemFunc shmem_put16
syn keyword shmemFunc shmem_put32
syn keyword shmemFunc shmem_put64
syn keyword shmemFunc shmem_put128
syn keyword shmemFunc shmem_get8
syn keyword shmemFunc shmem_get16
syn keyword shmemFunc shmem_get32
syn keyword shmemFunc shmem_get64
syn keyword shmemFunc shmem_get128
syn keyword shmemFunc shmem_iput8
syn keyword shmemFunc shmem_iput16
syn keyword shmemFunc shmem_iput32
syn keyword shmemFunc shmem_iput64
syn keyword shmemFunc shmem_iput128
syn keyword shmemFunc shmem_iget8
syn keyword shmemFunc shmem_iget16
syn keyword shmemFunc shmem_iget32
syn keyword shmemFunc shmem_iget64
syn keyword shmemFunc shmem_iget128
syn keyword shmemFunc shmem_putmem
syn keyword shmemFunc shmem_getmem

" Non-blocking Remote Memory Access Routines
syn keyword shmemFunc shmem_put_nbi
syn keyword shmemFunc shmem_get_nbi
syn keyword shmemFunc shmem_char_put_nbi
syn keyword shmemFunc shmem_char_get_nbi
syn keyword shmemFunc shmem_short_put_nbi
syn keyword shmemFunc shmem_short_get_nbi
syn keyword shmemFunc shmem_int_put_nbi
syn keyword shmemFunc shmem_int_get_nbi
syn keyword shmemFunc shmem_long_put_nbi
syn keyword shmemFunc shmem_long_get_nbi
syn keyword shmemFunc shmem_longlong_put_nbi
syn keyword shmemFunc shmem_longlong_get_nbi
syn keyword shmemFunc shmem_float_put_nbi
syn keyword shmemFunc shmem_float_get_nbi
syn keyword shmemFunc shmem_double_put_nbi
syn keyword shmemFunc shmem_double_get_nbi
syn keyword shmemFunc shmem_longdouble_put_nbi
syn keyword shmemFunc shmem_longdouble_get_nbi
syn keyword shmemFunc shmem_put8_nbi
syn keyword shmemFunc shmem_put16_nbi
syn keyword shmemFunc shmem_put32_nbi
syn keyword shmemFunc shmem_put64_nbi
syn keyword shmemFunc shmem_put128_nbi
syn keyword shmemFunc shmem_get8_nbi
syn keyword shmemFunc shmem_get16_nbi
syn keyword shmemFunc shmem_get32_nbi
syn keyword shmemFunc shmem_get64_nbi
syn keyword shmemFunc shmem_get128_nbi
syn keyword shmemFunc shmem_putmem_nbi
syn keyword shmemFunc shmem_getmem_nbi

" Atomic Memory Operations
syn keyword shmemFunc shmem_finc
syn keyword shmemFunc shmem_inc
syn keyword shmemFunc shmem_fadd
syn keyword shmemFunc shmem_add
syn keyword shmemFunc shmem_cswap
syn keyword shmemFunc shmem_swap
syn keyword shmemFunc shmem_fetch
syn keyword shmemFunc shmem_set
syn keyword shmemFunc shmem_int_finc
syn keyword shmemFunc shmem_int_inc
syn keyword shmemFunc shmem_int_fadd
syn keyword shmemFunc shmem_int_add
syn keyword shmemFunc shmem_int_cswap
syn keyword shmemFunc shmem_int_swap
syn keyword shmemFunc shmem_int_fetch
syn keyword shmemFunc shmem_int_set
syn keyword shmemFunc shmem_long_finc
syn keyword shmemFunc shmem_long_inc
syn keyword shmemFunc shmem_long_fadd
syn keyword shmemFunc shmem_long_add
syn keyword shmemFunc shmem_long_cswap
syn keyword shmemFunc shmem_long_swap
syn keyword shmemFunc shmem_long_fetch
syn keyword shmemFunc shmem_long_set
syn keyword shmemFunc shmem_longlong_finc
syn keyword shmemFunc shmem_longlong_inc
syn keyword shmemFunc shmem_longlong_fadd
syn keyword shmemFunc shmem_longlong_add
syn keyword shmemFunc shmem_longlong_cswap
syn keyword shmemFunc shmem_longlong_swap
syn keyword shmemFunc shmem_longlong_fetch
syn keyword shmemFunc shmem_longlong_set
syn keyword shmemFunc shmem_float_swap
syn keyword shmemFunc shmem_float_fetch
syn keyword shmemFunc shmem_float_set
syn keyword shmemFunc shmem_double_swap
syn keyword shmemFunc shmem_double_fetch
syn keyword shmemFunc shmem_double_set

" Collective Routines
syn keyword shmemFunc shmem_barrier
syn keyword shmemFunc shmem_barrier_all
syn keyword shmemFunc shmem_broadcast32
syn keyword shmemFunc shmem_broadcast64
syn keyword shmemFunc shmem_fcollect32
syn keyword shmemFunc shmem_fcollect64
syn keyword shmemFunc shmem_collect32
syn keyword shmemFunc shmem_collect64
syn keyword shmemFunc shmem_alltoall32
syn keyword shmemFunc shmem_alltoall64
syn keyword shmemFunc shmem_alltoalls32
syn keyword shmemFunc shmem_alltoalls64
syn keyword shmemFunc shmem_complexf_sum_to_all
syn keyword shmemFunc shmem_complexf_prod_to_all
syn keyword shmemFunc shmem_complexd_sum_to_all
syn keyword shmemFunc shmem_complexd_prod_to_all
syn keyword shmemFunc shmem_float_sum_to_all
syn keyword shmemFunc shmem_float_prod_to_all
syn keyword shmemFunc shmem_float_min_to_all
syn keyword shmemFunc shmem_float_max_to_all
syn keyword shmemFunc shmem_double_sum_to_all
syn keyword shmemFunc shmem_double_prod_to_all
syn keyword shmemFunc shmem_double_min_to_all
syn keyword shmemFunc shmem_double_max_to_all
syn keyword shmemFunc shmem_longdouble_sum_to_all
syn keyword shmemFunc shmem_longdouble_prod_to_all
syn keyword shmemFunc shmem_longdouble_min_to_all
syn keyword shmemFunc shmem_longdouble_max_to_all
syn keyword shmemFunc shmem_short_sum_to_all
syn keyword shmemFunc shmem_short_prod_to_all
syn keyword shmemFunc shmem_short_and_to_all
syn keyword shmemFunc shmem_short_or_to_all
syn keyword shmemFunc shmem_short_xor_to_all
syn keyword shmemFunc shmem_short_min_to_all
syn keyword shmemFunc shmem_short_max_to_all
syn keyword shmemFunc shmem_int_sum_to_all
syn keyword shmemFunc shmem_int_prod_to_all
syn keyword shmemFunc shmem_int_and_to_all
syn keyword shmemFunc shmem_int_or_to_all
syn keyword shmemFunc shmem_int_xor_to_all
syn keyword shmemFunc shmem_int_min_to_all
syn keyword shmemFunc shmem_int_max_to_all
syn keyword shmemFunc shmem_long_sum_to_all
syn keyword shmemFunc shmem_long_prod_to_all
syn keyword shmemFunc shmem_long_and_to_all
syn keyword shmemFunc shmem_long_or_to_all
syn keyword shmemFunc shmem_long_xor_to_all
syn keyword shmemFunc shmem_long_min_to_all
syn keyword shmemFunc shmem_long_max_to_all
syn keyword shmemFunc shmem_longlong_sum_to_all
syn keyword shmemFunc shmem_longlong_prod_to_all
syn keyword shmemFunc shmem_longlong_and_to_all
syn keyword shmemFunc shmem_longlong_or_to_all
syn keyword shmemFunc shmem_longlong_xor_to_all
syn keyword shmemFunc shmem_longlong_min_to_all
syn keyword shmemFunc shmem_longlong_max_to_all

" Point-To-Point Synchronization Routines
syn keyword shmemFunc shmem_wait
syn keyword shmemFunc shmem_wait_until
syn keyword shmemFunc shmem_short_wait
syn keyword shmemFunc shmem_short_wait_until
syn keyword shmemFunc shmem_int_wait
syn keyword shmemFunc shmem_int_wait_until
syn keyword shmemFunc shmem_long_wait
syn keyword shmemFunc shmem_long_wait_until
syn keyword shmemFunc shmem_longlong_wait
syn keyword shmemFunc shmem_longlong_wait_until

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
