class PalindromeChecker

  def initialize(input)
    @input = input.to_s
  end

  def palindrome
    if @input.include?(".txt")
      palindrome_array = File.read(@input).split(" ").select{|a| a.downcase == a.downcase.reverse}
      return "Total Palindromes = #{palindrome_array.length}: #{palindrome_array.join(", ")}"
    end
    return @input.downcase == @input.downcase.reverse
  end

end