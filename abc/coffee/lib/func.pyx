cdef func(str s):
    if s[2] == s[3] and s[4] == s[5]:
        print("Yes")
    else:
        print("No")
    
def wrapped_func(s: str):
    func(s)