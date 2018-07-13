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
  return true if /^[BCDFGHJKLMNPQRSTVXZ]/i.match(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s.to_i == 0

end

# Part 3

class BookInStock
# YOUR CODE HERE


def initialize(isbn, price)
  raise ArgumentError, 'erro' if !(isbn.is_a?(String)) || isbn.empty?
  raise ArgumentError, 'erro' if price <= 0
  @isbn = isbn
  @price = price


end

attr_accessor :isbn, :price

def price_as_string
   sprintf("$%0.2f",@price)

end
end
