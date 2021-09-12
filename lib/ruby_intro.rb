# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr == []
    return 0
  end
  if arr.length() == 1
    return arr[0]
  end
  sortedArr = arr.sort
  twoSum = sortedArr[-1] + sortedArr[-2]
  return twoSum
end


def sum_to_n? arr, n
  # YOUR CODE HERE
    sum_list = []
    
    if arr.length == 1 || arr.length == 0
      return false
    end
    
    while arr.length > 1
        a = arr.dup
        arr.shift()
        b = arr

        #add first element with remaining elements
        for i in b
            sum_list.push(a[0] + i)
        end
    end

    if sum_list.include?(n)
        return true
    end
    return false
end



# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
    if not s[/^[a-zA-Z]/]
      return false
    end
    if s[/^[aeiouAEIOU]/] || s == ""
        return false
    end 
    return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s[/[23456789]/] || s.to_i % 4 != 0 || s[/[a-zA-Z]/]
      return false
    end
    
    if s == ""
      return false
    end

    return true
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(is, pr)
    
    if is.empty?
      raise ArgumentError
    end
    
    if pr <= 0
      raise ArgumentError
    end
    
    @isbn = is
    @price = pr
  end

  def price_as_string
    return "$"+"%0.2f"% @price
  end

end
