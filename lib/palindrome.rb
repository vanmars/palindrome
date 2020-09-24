class PalindromeChecker

  def initialize(input)
    @input = input.to_s
  end

  def palindrome
    if @input.include?(".txt")
      input_array = File.read(@input).split(" ")
      alphanumerics_only = input_array.each {|a| a.gsub!(/\W/, "")}
      palindrome_array = alphanumerics_only.select{|a| a.downcase == a.downcase.reverse}
      return "Total Palindromes = #{palindrome_array.length}: #{palindrome_array.join(", ")}"
    end
    return @input.downcase == @input.downcase.reverse
  end

end