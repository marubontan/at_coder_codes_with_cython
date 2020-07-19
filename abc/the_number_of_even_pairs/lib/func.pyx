cdef struct Input:
    size_t n
    size_t m

cdef parse_input(str s):
    cdef str n, m
    n, m = s.split(" ")
    return Input(n=int(n), m=int(m))

cdef func(str s):
    cdef Input parsed_input = parse_input(s)
    
    cdef size_t acc = 0
    if parsed_input.n >= 2:
        acc += (parsed_input.n * (parsed_input.n - 1)) / 2
    if parsed_input.m >= 2:
        acc += (parsed_input.m * (parsed_input.m - 1)) / 2
    print(acc)
    
def wrapped_func(str s):
    func(s)