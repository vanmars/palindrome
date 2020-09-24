class PalindromeChecker

  def initialize(input)
    @input = input
  end

  def palindrome?
    return @input.downcase == @input.downcase.reverse
  end

end