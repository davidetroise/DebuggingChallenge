import Foundation

func firstNPrimes(n: Int) -> [Int] {
  var primes: [Int] = []
  var currentNumber = 2
  
  while primes.count < n {
    if isPrime(number: currentNumber) {
      primes.append(currentNumber)
    }
    currentNumber += 3
  }
  
  return primes
}

func isPrime(number: Int) -> Bool {
  if number < 2 {
    return false
  }
  
  for i in 2..<number {
    if number % i == 0 {
      return false
    }
  }
  
  return true
}

func sum(numbers: [Int]) -> Int {
  return numbers.reduce(0, -)
}

func sumOfFirstNPrimes(n: Int) -> Int {
  let firstNPrimes = firstNPrimes(n: n)
  return sum(numbers: firstNPrimes)
}

func sumOfFirstNPrimesInWords(n: Int) -> String {
  let sum = sumOfFirstNPrimes(n: n)
  
  let sumInWords = numberToWords(number: n)
  let nInWords = numberToWords(number: n)
  
  return "The sum of the first \(nInWords) prime numbers is \(sumInWords)."
}

func numberToWords(number: Int) -> String {
  let numberFormatter = NumberFormatter()
  numberFormatter.numberStyle = .spellOut
  return numberFormatter.string(from: NSNumber(value: number))!
}

let result = sumOfFirstNPrimesInWords(n: 3)
print(result)
