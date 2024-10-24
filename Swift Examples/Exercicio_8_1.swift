class Calculadora {
  var num1: Int
  var num2: Int

  init(num1: Int, num2: Int) {
    self.num1 = num1
    self.num2 = num2 
  } 

  func soma() -> Int {
    return num1 + num2
  }
  func subtracao() -> Int {
    return num1 - num2
  }
  func multiplicacao() -> Int {
     return num1 * num2
  }
  func divisao() -> Int {
     return num1 / num2
 }
}

var calculadora = Calculadora(num1: 10, num2: 10)

print(calculadora.soma())
print(calculadora.subtracao())
print(calculadora.multiplicacao())
print(calculadora.divisao())