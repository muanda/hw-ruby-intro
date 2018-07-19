# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum arr.sort.reverse.take(2)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0

  while i < arr.length
    current = arr[i]
    j=0
    while  j< arr.length
      unless j == i
        sum = current + arr[j]
        return true if sum == n
      end
      j += 1
    end
    i +=1
  end

  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
   /^[BCDFGHJKLMNPQRSTVXZ]/i.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return  false if s.empty? or !(s.delete("01").empty?)
  s.to_i(2) % 4 == 0

end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(*args)
    raise ArgumentError, 'erro' if !(args[0].is_a?(String)) || args[0]
    .empty?
    raise ArgumentError, 'erro' if args[1] <= 0
    @isbn = args[0]
    @price = args[1]
  end

  attr_accessor :isbn, :price

  def price_as_string
    sprintf("$%0.2f",@price)

  end
end
