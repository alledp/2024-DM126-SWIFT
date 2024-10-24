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
  class Vendedor: Empregado {

    func percentualComissao(numeroVendas: Int) -> Int {
      return (numeroVendas * 5) + Int(salario)
    }
}

var vendedor = Vendedor(nome: "Flavio", salario: 1000)
print(vendedor.percentualComissao(numeroVendas: 10))