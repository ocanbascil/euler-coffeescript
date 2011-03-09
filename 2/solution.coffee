###
Problem 2

Each new term in the Fibonacci sequence is generated 
by adding the previous two terms. By starting with 
1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence 
whose values do not exceed four million, find the sum
 of the even-valued terms.
###

start = Date.now()

memoize = (func) ->
  memo ?= {}
  (arg) ->
    memo[arg] = func arg unless memo[arg]
    memo[arg]

fibonacci = (n) ->
  if   n < 2
  then 1
  else fibonacci(n-1) + fibonacci(n-2)

fibonacci = memoize fibonacci

limit = 4000000
sum = 0
n = 0

while true
  temp = fibonacci n
  if temp >= limit
    break 
  if temp % 2 == 0
    sum += temp
  n += 1

console.log 'Result: '+sum
console.log "Finished in : #{Date.now() - start} ms"
