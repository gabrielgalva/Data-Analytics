# Exercício de programação 4: Exercícios Parte 1

for num in range(2, 101):
    primo = True
    for i in range(2, num):
        if num % i == 0:
            primo = False
            break
    if primo:
        print(num)
        
