# lfq
The `lfq` implements a concurrent queue and utilizes hazard pointers to release memory. 

The original code was from [quiz8_test3](https://hackmd.io/@sysprog/linux2023-quiz8#%E6%B8%AC%E9%A9%97-3) in the course "Linux Kernel Internals" at NCKU during Spring 2023.

However, the original code was specifically designed for x86(-64) architecture and had data race issues that could not pass the runtime detection of Thread Sanitizer.

Therefore, this program has been modified using C11 Atomics to support other processor architectures and has rewritten the code to solve the data race issues, enabling it to pass the runtime detection of Thread Sanitizer.