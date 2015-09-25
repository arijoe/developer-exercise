class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Bit of a dead-end on this attempt; gsub is a much more suitable function
    # str.split(' ').map! do |word|
    #   if word.length > 4
    #     word = (word.capitalize == word) ? 'Marklar' : 'marklar'
    #   else
    #     word
    #   end
    # end.join(' ')

    str.gsub(/[\w']+/) do |word|
      if word.length > 4
        word = (word.capitalize == word) ? 'Marklar' : 'marklar'
      else
        word
      end
    end
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.fibs(n)
    return [1] if n <= 1
    return [1, 1] if n == 2

    prev = fibs(n - 1)
    prev.push(prev[-1] + prev[-2])
  end

  def self.even_fibonacci(nth)
    self.fibs(nth).inject(0) { |accum, int| accum = (int % 2 == 0) ? accum + int : accum }
  end

  # Loved this application, having a great time so far.
end
