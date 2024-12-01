def read_file(filename: str) -> [str]:
    lines = []
    with open(filename, 'r') as h:
        lines = h.readlines()
    return lines

def split_int(s:str) -> [int]:
    return list(map(int, s.split()))