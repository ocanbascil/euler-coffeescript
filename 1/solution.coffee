###
Problem 1

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
###

start = Date.now()

filter = (x) -> if (num % 3 == 0 or num % 5 == 0) then true else false

sum = (list) -> 
  result = 0
  for num in list
    result += num
  result

numbers = (num for num in [1..999] when filter num)

console.log sum numbers
console.log 'Finished in :'+(Date.now() - start)+' ms'
