#pragma once

#include <stdatomic.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#define ATOMIC_SET atomic_flag_test_and_set
#define ATOMIC_RELEASE atomic_flag_clear

#define ATOMIC_SUB atomic_fetch_sub
#define ATOMIC_SUB64 ATOMIC_SUB
#define CAS atomic_compare_exchange_strong
#define cmpxchg CAS
/* The 2nd argument is limited to 1 on machines with TAS but not XCHG.
 * On x86 it is an arbitrary value.
 */
#define XCHG atomic_exchange

#define ATOMIC_ADD atomic_fetch_add
#define ATOMIC_ADD64 ATOMIC_ADD
#define mb() atomic_thread_fence(memory_order_seq_cst)

/* compiler barrier only: runtime reordering is impossible on x86 */
#define lmb() atomic_thread_fence(memory_order_seq_cst)
#define smb() atomic_thread_fence(memory_order_seq_cst)
