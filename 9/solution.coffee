###
Problem 9 

A Pythagorean triplet is a set of three natural 
numbers, a < b < c, for which,

	a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for 
which a + b + c = 1000.
Find the product abc.
###

start = Date.now()

sqr = (x) -> x * x 
pyth = (tuple) -> 
  Math.sqrt ((sqr tuple[0]) + (sqr tuple[1]))

mapper = (group,func) -> 
  result = []
  for sub in group
    sub = sub.map func
    result.push(sub)
  result

checker = (nums,sums,size) ->
  for i in [0..size-1]
    for j in [0..size-1]
      n1 = nums[i][j][0]
      n2 = nums[i][j][1]
      s = sums[i][j]
      if n1+n2+s == 1000
        return [n1,n2,s]

size = 500
nums = ( [i,j] for i in [1..size] for j in [1..size])
sums = mapper nums,pyth

nums =  checker nums,sums,size

result = nums[0]*nums[1]*nums[2]

console.log "Result: #{result}"
console.log "Finished in : #{Date.now() - start} ms"
