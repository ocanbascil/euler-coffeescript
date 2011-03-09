###
The sum of the squares of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 55^2 = 3025

Hence the difference between the sum of the squares of 
the first ten natural numbers and the square of the sum
 is 3025 - 385 = 2640.

Find the difference between the sum of the squares of 
the first one hundred natural numbers and the square of the sum.

###

start = Date.now()

square = (x) -> x*x

sum = (array) -> 
  sum = 0
  for i in array
    sum += i
  sum

sum_squares = (array) -> sum array.map square

square_sum = (array) -> square sum array

numbers = [1..100]
result = (square_sum numbers) - (sum_squares numbers)

console.log 'Result: '+result
console.log "Finished in : #{Date.now() - start} ms"
