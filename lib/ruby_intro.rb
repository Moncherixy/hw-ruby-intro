# Ruby version: ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]
# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  end
  
  sum_arr = 0
  for arr_ele in arr do
    sum_arr += arr_ele
  end
 return sum_arr
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  
  if arr.size == 1
    return arr[0]
  end
  
  arr_max_1 = [arr[0],arr[1]].max
  arr_max_2 = [arr[0],arr[1]].min
  for i in (2...arr.size)
    if arr[i]>=arr_max_1
      arr_max_2 = arr_max_1
      arr_max_1 = arr[i]
    elsif arr[i]>arr_max_2
      arr_max_2 = arr[i]
    end
    
  end
  return arr_max_1+arr_max_2
end

def sum_to_n? arr, n
  if arr.size<2
    return false
  end  
  for i in (0...arr.size)
    remind = [(n-arr[i])]&arr[i+1,arr.size]
    if remind.size>0
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.empty?
		return false
  end
	s = s.downcase
  return (s[0]=~/[bcdfghjklmnprstvwxyz]/)
end

def binary_multiple_of_4? s
  if s.empty? 
		return false
  end
  binary = ['0', '1']
	for i in 0...s.size
		if !binary.include?(s[i])
			return false
		end
	end
	return s.to_i(2)%4==0
end

# Part 3

class BookInStock
	def initialize(isbn, price)
		if isbn.empty? or price<=0
			raise ArgumentError, "Illegal argument" 
		end
		@isbn = isbn
		@price = price
	end
	#getter
	def isbn
		@isbn
	end
	def price
		@price
	end
	# setter
	def isbn=(value)
		@isbn = value
	end
	def price=(value)
		@price = value
	end
	 # print book price
	def price_as_string
		formated_price = "$%0.2f" % [@price]
	end
end
