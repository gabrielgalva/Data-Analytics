# Exercício de programação 1: E1

with open('number.txt', 'r') as f:
    number = [int(line.strip()) for line in f]

    even_number = list(map(lambda n: n if n % 2 == 0 else None, number))
    even_number = list(filter(lambda n: n is not None, even_number))

    sorted = sorted(even_number, reverse=True)

    top_5 = sum(sorted [:5])

    print(sorted [:5])
    print(top_5)
