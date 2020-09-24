require ('rspec')
require ('palindrome')

describe('PalindromeChecker#palindrome?') do
  it('checks if a word is a palindrome') do
    word = PalindromeChecker.new('mom')
    expect(word.palindrome?).to(eq(true))
  end

  it('checks if a word-regardless of capitalization-is a palindrome') do
    word = PalindromeChecker.new('Mom')
    expect(word.palindrome?).to(eq(true))
  end

end