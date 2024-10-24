func checkPrime(_ number: Int) -> Bool {
  if number <= 1 {
    return false
  }

  if number <= 3 {
    return true
  }

  var i = 2

  while i * i <= number {
    if number % i == 0 {
      return false
    }
        i += 1
    }

    return true; 
}

print(checkPrime(4))