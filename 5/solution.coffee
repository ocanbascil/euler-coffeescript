###
2520 is the smallest number that can be divided by each 
of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible
by all of the numbers from 1 to 20?
###

start = Date.now()

div_test = (num) ->
  for i in [20..2]
    if num % i != 0
      return false
  return true

num = 20

while not div_test(num)
  num += 20

console.log 'Result: '+num
console.log "Finished in : #{Date.now() - start} ms"
