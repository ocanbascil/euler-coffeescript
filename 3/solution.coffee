###
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
###

start = Date.now()

find_div = (num) ->
  result = []
  div = 2  
  while div <= num
    if num % div == 0
      num /= div
      result.push(div)
    div += 1
  result

list = find_div 600851475143

console.log list[list.length-1]
console.log "Finished in : #{Date.now() - start} ms"
