func calculoDaMedia(_ notas: [Double]) -> Double {

  var soma = 0.0

  for nota in notas{
    soma += nota
  }

  return soma/Double(notas.count);

}

print(calculoDaMedia([70,30,20,100,50]));