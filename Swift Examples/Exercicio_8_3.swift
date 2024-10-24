struct Retangulo{
  let Base: Int;
  let Altura: Int;

  func calcularArea() -> Int {
    return Base * Altura;
  }

  func calcularPerimetro() -> Int{
    return (2 * Base) + (2 * Altura)
  }
}

var retangulo = Retangulo(Base: 10, Altura: 10)
print(retangulo.calcularArea())
print(retangulo.calcularPerimetro())