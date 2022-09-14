cypher = input()
crib = input()
count = 0

for i in range(len(cypher) - len(crib)):
    valid = True
    for j in range(len(crib)):
        if cypher[i + j] == crib[j]:
            valid = False
    if valid:
        count += 1

print(count)