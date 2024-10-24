class Restaurante{
  let nome: String
  let tipoDeComida: String
  var numeroDePedidos: Int

  init(nome: String, tipoDeComida: String, numeroDePedidos: Int){
    self.nome = nome
    self.tipoDeComida = tipoDeComida
    self.numeroDePedidos = 0
  }

  func recebePedido(){
    numeroDePedidos += 1
  }

  func calculaTotalPedidos() -> Int{
    return numeroDePedidos * 35
  }

}

var restaurante = Restaurante(nome: "Restaurante do Jose", tipoDeComida: "Chines", numeroDePedidos: 0)

restaurante.recebePedido()
restaurante.recebePedido()
restaurante.recebePedido()
print(restaurante.calculaTotalPedidos())