class Empregado {
  var nome: String
  var salario: Double

  init (nome: String, salario: Double){
    self.nome = nome
    self.salario = salario
  }

}

class Gerente: Empregado {
  var departamento: String

  init (nome: String, salario: Double, departamento: String){
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }

}

var empregado = Empregado(nome: "Joao", salario: 1000)
var gerente = Gerente(nome: "Maria", salario: 2000, departamento: "Vendas")

print("Nome do Empregado: ",empregado.nome)
print("Salario do Empregado: ",empregado.salario)
print("Nome do Gerente: ",gerente.nome)
print("Salario do Gerente: ",gerente.salario)
print("Departamento do Gerente: ",gerente.departamento)