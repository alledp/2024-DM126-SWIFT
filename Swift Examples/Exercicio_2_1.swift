var idade = 10

if(idade > 0 && idade < 13){
  print("Criança")
}

else if (idade > 13 && idade < 18){
  print("Adolescente")
}

else {
  print("Adulto")
}

//-------------------- Using Switch -------------------

switch idade{
  case 0...13: print("Criança")
  case 14...17: print("Adolescente")
  default: print("Adulto")
}