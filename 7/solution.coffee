###
Problem 7

By listing the first six prime numbers: 
2, 3, 5, 7, 11, and 13, we can see that 
the 6th prime is 13.

What is the 10001st prime number?
###

start = Date.now()

is_prime = (num,arr) ->
  for div in arr
    if num % div == 0
      return false
  return true

find_prime = (num) ->
  arr = [2]
  p = 3
  while arr.length < num
    if is_prime p,arr
      arr.push p
    p += 2
  arr[arr.length-1]

console.log "Result: "+ find_prime 10001
console.log "Finished in : #{Date.now() - start} ms"
