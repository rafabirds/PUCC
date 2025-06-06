#EX-1

'''numero = int(input('Digite um número:'))
resultado = ''

def verif_par(numero):
    if numero % 2 == 0:
        resultado += "O número é par"
    else:
        resultado += "O número é impar"

def verif_maior100(numero):
    if numero < 100:
        resultado += "e menor que 100"
    else:
        resultado += "e maior que 100"

verif_par(numero)
verif_maior100(numero)

print(resultado)'''

#EX-2

alunos = {}
soma_geral = 0
inferior5 = 0
superior7 = 0

def calcular_medias(mat, cie, port):
    media = (mat + cie + port) / 3
    return media

for i in range(3):
    nome_aluno = input("Digite o nome de um aluno: ")
    nota_mat = int(input("Digite a nota de mat desse aluno: "))
    nota_ci = int(input("Digite a nota de cie desse aluno: "))
    nota_port = int(input("Digite a nota de port desse aluno: "))
    alunos[nome_aluno] = [nota_mat, nota_ci, nota_port]

for key, item in alunos.items():
    media = calcular_medias(item[0], item[1], item[2])
    if media < 5:
        inferior5 += 1
    elif media >= 7:
        superior7 += 1

    alunos[key] = media

for key, item in alunos.items():
    soma_geral += item

media_geral = soma_geral / 3

print(f"A média geral da turma é: {media_geral:.2f}")
print(f"A quantidade de alunos com média superior a 7 é: {superior7}")
print(f"A quantidade de alunos com média inferior a 5 é: {inferior5}")