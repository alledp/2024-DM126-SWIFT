func separaParEImpar(_ conjunto: [Int]) {

  var numeroParSet: Set<Int> = []
  var numeroImparSet: Set<Int> = []

  for value in conjunto{
    if(value%2 == 0){
      numeroParSet.insert(value)
      //cria conjunto par
    }else{
      numeroImparSet.insert(value)
      //cria conjunto impar
    }
  }
  print(numeroParSet)
  print(numeroImparSet)

}

var valores = [1,2,3,4,5,6,7,8,9,10]
separaParEImpar(valores)