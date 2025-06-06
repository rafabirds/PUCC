#EX-1
"""a = int(input())
b = int(input())
c = int(input())
soma = a + b
print(f"a soma de a e b é {soma}")
if soma < c:
    print(f"a soma de a e b é menor que c")
else:
    print(f"a soma de a e b é maior que c")"""

#EX-2
"""sum = 0
for num in range(15, 101):
    sum += num
media = sum // 85
print(f"a média aritmética dos números de 15 até 100 é {media}")"""

#EX-3
"""a = int(input())
b = int(input())
c = int(input())
maior = 0
meio = 0
menor = 0

if a > b and a > c:
    maior = a
    if b > c:
        meio = b
        menor = c
    else:
        meio = c
        menor = b
elif b > a and b > c:
    maior = b
    if a > c:
        meio = a
        menor = c
    else:
        meio = c
        menor = a
else:
    maior = c
    if a > b:
        meio = a
        menor = b
    else:
        meio = b
        menor = a

print(maior, meio, menor)"""

#EX-4
"""val_hora = float(input())
num_aulas = int(input())
inss = int(input())

salario_bruto = val_hora * num_aulas
desconto = salario_bruto * (inss / 100)
salario_liquido = salario_bruto - desconto

print(f"O salário líquido final é {salario_liquido:.2f}")"""

#EX-5
"""user_year = int(input("Em que ano você nasceu?"))
years = 2025 - user_year
month_now = 3
months = years * 12 + month_now
day_now = 26
days = months * 30 + day_now
print(f"Anos: {years}\nMeses{months}\nDias: {days}")"""

#EX-6
"""horas_mes = int(input("horas trabalhadas por mes: "))
salario_h = int(input("salario por hora: "))
limite_h = 40 * 4
salario_final = salario_h * horas_mes
if horas_mes > limite_h:
    horas_extra = horas_mes - limite_h
    acrescimo = horas_extra * (salario_h + (salario_h * 0.5))
    salario_final += acrescimo
    print(f"o salario total é {salario_final:.2f}")
else:
    print(f"o salario total é {salario_final:.2f}")"""

#EX-8
"""for num in range(1, 11):
    print(f"{num} ", end="") """

#EX-9
"""quantidade = 0
soma = 0
for num in range(10):
    user_num = int(input("digite um numero: "))
    quantidade += 1
    soma += user_num
media = soma / quantidade
print(f"a media é {media}")"""

#EX-10
"""quantidade_alunos = int(input("Quantos alunos?"))
soma = 0
for i in range(1, quantidade_alunos + 1):
    num = float(input(f"Qual é a nota do {i}º aluno?"))
    soma += num
media = soma / quantidade_alunos
print(f"A media das notas é {media:.1f}")"""

#EX-11
"""salario = float(input("Qual o seu salario?\n"))
n_filhos = int(input("Quantos filhos voce tem?\n"))
soma_salario = 0
soma_filhos = 0
n_habitantes = 0
maior_salario = 0
hab_menor = 0

if salario > 0:
    while salario > 0:
        soma_salario += salario
        soma_filhos += n_filhos
        n_habitantes += 1
        if salario > maior_salario:
            maior_salario = salario
        if salario < 1500:
            hab_menor += 1
        salario = float(input("Qual o seu salario?\n"))
        n_filhos = int(input("Quantos filhos voce tem?\n"))
    media_sal = soma_salario / n_habitantes
    media_fil = soma_filhos / n_habitantes
    percentual = hab_menor / n_habitantes * 100
    print(f"Media do salario: {media_sal:.2f}")
    print(f"Media dos filhos: {media_fil:.2f}")
    print(f"Maior salario: {maior_salario:.2f}")
    print(f"Percentual de pessoas que ganham menos de R$1500,00 {percentual:.2f}%")
else:
    print("Voce nao inseriu um numero valido")"""

#EX-12
