# lfq
The original code was from [quiz8_test3](https://hackmd.io/@sysprog/linux2023-quiz8#%E6%B8%AC%E9%A9%97-3) in the course "Linux Kernel Internals" at NCKU during Spring 2023.

The lock-free queue implementation is based on the paper [A Scalable, Portable, and Memory-Efficient Lock-Free FIFO Queue](https://drops.dagstuhl.de/opus/volltexte/2019/11335/pdf/LIPIcs-DISC-2019-28.pdf) by Ruslan Nikolaev.
Nikolaev's paper provides an overview of various methods for implementing lock-free queues. This implementation specifically adopts the SCQ (Scalable Circular Queue) approach, which is designed for bounded queues. However, this approach can be easily extended to support unbounded FIFO queues capable of storing an arbitrary number of elements.

In addition, this implementation employs a hazard pointer-based memory reclamation system for concurrent queues.