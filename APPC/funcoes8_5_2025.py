#EX-1

'''def suc_ant(val):
    ant = val -1
    suc = val +1
    print(f"Antecessor: {ant}"
          f"\nSucessor {suc}")

suc_ant(int(input("Digite um número: ")))'''

#EX-2

'''def ler_numero():
    num = int(input("Digite um número: "))
    return num

def somar_valores(x, y, z):
    soma = x + y + z
    return soma

num1 = ler_numero()
num2 = ler_numero()
num3 = ler_numero()

print(f"A soma desses valores é: {somar_valores(num1, num2, num3)}")
'''

#EX-3

def somaImposto(taxaImposto, custo):
    valorFinal = taxaImposto * custo
    return valorFinal

taxa = float(input("Digite uma porcentagem de taxa (em decimal(EX: 1.2)): "))
custo = float(input("Digite o valor do produto: "))

valorFinal = somaImposto(taxa, custo)
print(f"O valor final com imposto é: R${valorFinal:.2f}")