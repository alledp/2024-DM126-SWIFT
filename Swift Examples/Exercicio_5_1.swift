func optionalValue(_ nome: String?) {

  guard let nome = nome else{
    print("Variavel Nula")
    return
  }
  print (nome)

}

func verificaNome (nome: String?){
  print(nome ?? "Variavel Nula")
}

print(optionalValue(nil))
//verificaNome(nome: "Alled")
//verificaNome(nome: nil)