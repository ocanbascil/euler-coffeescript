###
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91  99.

Find the largest palindrome made from the product of two 3-digit numbers.
###

start = Date.now()

is_palindrome = (num) ->
  num += ''
  len = num.length
  if len % 2 == 0
    first_half = num[0..len/2-1]
    second_half = num[len/2..len]
  else
    first_half = num[0..len/2]
    second_half = num[len/2..len]

  first_half = first_half.split('').join()
  second_half =  second_half.split('').reverse().join()

  first_half is second_half

tester = (group) ->
  for item in group
    for i in item
      if is_palindrome i
        return i 

arr = (i*j for i in [999..1] for j in [999..1] )

console.log 'Result: '+tester arr
console.log "Finished in : #{Date.now() - start} ms"
