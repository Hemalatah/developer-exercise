class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    str_list = str.split(' ')
    special = ""
    puts str_list
    str_list.each_with_index do |str_item,index|
      if str_item.match(/\W/)
        special = str_item[-1,1]
      else 
        special = ""
      end
      if str_item.length > 4 and str_item[0] =~ /[A-Z]/ 
        str_list[index] = "Marklar"+special
      elsif str_item.length > 4
        str_list[index] = "marklar"+special
      end
    end
    str_list.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a, b = 0, 1
    sum = 0
    for i in 2..nth
      temp = a+b
      a = b
      b = temp
      if b % 2 == 0
        sum += b
      end
    end
    sum
  end
end
