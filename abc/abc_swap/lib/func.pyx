cdef struct Input:
    size_t a
    size_t b
    size_t c

cdef parse_input(str s):
    cdef size_t x, y, z
    x, y, z = [int(i) for i in s.split(" ")]
    return Input(a=x, b=y, c=z)


cdef func(str s):
    cdef Input parsed_input = parse_input(s)
    print(str(parsed_input.c) + " " + str(parsed_input.a) + " " + str(parsed_input.b))

    
def wrapped_func(s: str):
    func(s)