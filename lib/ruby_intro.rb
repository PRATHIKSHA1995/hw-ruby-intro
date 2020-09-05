# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  # Sum of all the numbers
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0  # Check length = 0
    return 0
  elsif arr.length == 1   # Check length = 1
    return arr[0]
  else
    arr.sort! {|x, y| y <=> x}    # Sort in descending order and pick the first two
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  # Sort the array and use two pointer approach
  arr.sort!
  $start = 0
  $end = arr.length - 1
  while $start < $end do
    if arr[$start] + arr[$end] == n
      return true
    elsif arr[$start] + arr[$end] < n
      $start += 1
    else
      $end -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.downcase
  if s.length == 0 || s[0].ord < 97 || s[0].ord > 122   # Check non alphabets
    return false
  elsif s[0] == 'a' || s[0] == 'e' || s[0] == 'i' || s[0] == 'o' || s[0] == 'u'   # Check vowel
    return false
  else    # Consonant
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.count('01') != s.size    # Validate binary string
    return false
  elsif s == "0" || s.end_with?("00")   # Check for multiple of 4
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  # Constructor
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError.new("Invalid isbn/price")
    end
    @isbn = isbn
    @price = price
  end
  
  # Getter for isbn
  def isbn
    @isbn
  end
  
  # Getter for price
  def price
    @price
  end
  
  # Setter for isbn
  def isbn=(isbn)
    @isbn = isbn
  end
  
  # Setter for price
  def price=(price)
    @price = price
  end
  
  # Formatting price
  def price_as_string
    $price = '%.2f' % @price
    return "$" + $price.to_s
  end
end
