#write your code here
def add(n1, n2)
	return n1+n2
end

def subtract(n1, n2)
	return n1-n2
end

def sum array
	sum=0
	for i in 0..array.length-1
		sum += array[i]
	end
	return sum
end

puts add(1, 2)
puts subtract(10, 4)
puts sum([1, 2, 3, 4, 5])
puts sum([])
puts sum([7])

def multiply(*nums)
	prod = 1
	for i in 0..nums.length-1
		prod *= nums[i]
	end
	return prod
end

puts multiply(1, 2, 3)

def power(n, k)
	return n**k
end

def fibonacci(n)
	if n == 0
		return 0
	elsif n == 1
		return 1
	else
		return fibonacci(n-1) + fibonacci(n-2)
	end
end

puts fibonacci(5)
puts fibonacci(3)
