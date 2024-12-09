# --- Day 9: Disk Fragmenter ---

test0 = "12345"
test1 = "2333133121414131402"


def disposer(file) -> list:
    disk = []
    id_file = 0
    for i in range(len(file)):
        times = int(file[i])
        if i % 2 == 0:
            disk += [id_file for i in range(times)]
            id_file += 1
        else:
            disk += ["." for i in range(times)]
    return disk


def compat2(line):
    disk = list(line)
    for i in range(len(disk) - 1, 0, -1):
        if disk[i] != ".":
            j = disk.index(".")
            if 0 <= j < i:
                disk[i], disk[j] = disk[j], disk[i]
            else:
                break
    return disk


def part1(line):
    disk = compat2(disposer(line))
    s = 0
    for i in range(disk.index(".")):
        s += i * disk[i]
    return s


print("Part 1 test 1", part1(test1))

line = open("../datas/day09.txt").read().strip()
print("Part 1:", part1(line))
