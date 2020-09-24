class PalindromeChecker

  def initialize(input)
    @input = input.to_s
  end

  def palindrome?
    return @input.downcase == @input.downcase.reverse
  end

end