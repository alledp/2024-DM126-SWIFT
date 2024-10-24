
var numberTries = 0
let randomInt = Int.random(in: 1...100)
//print (randomInt)
while true{
  print("Try to guess the Number from 1 to 100: ")
    if let input = readLine(), let numberChosen = Int(input){
      numberTries += 1
        // switch numberChosen{
        //   case numberChosen == randomInt: print("acertou")
        //   case numberChosen < randomInt: print("chutou baixo")
        //   default: print("chutou alto")
        // }
      if(numberChosen == randomInt){
        print("acertou")
        break
      }else if(numberChosen > randomInt){
        print("chutou alto")
      }else{
        print("chutou baixo")
      }
    } else{
      print("Invalid input. Please enter a valid integer.")
    }
  }
print("You took: \(numberTries) tries")