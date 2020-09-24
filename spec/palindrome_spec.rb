require ('rspec')
require ('palindrome')

describe('PalindromeChecker#palindrome') do
  it('checks if a word is a palindrome') do
    word = PalindromeChecker.new('mom')
    expect(word.palindrome).to(eq(true))
  end

  it('checks if a word is a palindrome') do
    word = PalindromeChecker.new('cat')
    expect(word.palindrome).to(eq(false))
  end

  it('checks if a word-regardless of capitalization-is a palindrome') do
    word = PalindromeChecker.new('Mom')
    expect(word.palindrome).to(eq(true))
  end

  it('checks if an integer is a palindrome') do
    int = PalindromeChecker.new(2662)
    expect(int.palindrome).to(eq(true))
  end

  it('scans a document for palindromes') do
    doc = PalindromeChecker.new("palindromes.txt")
    expect(doc.palindrome).to(eq("Total Palindromes = 3: Mom, eye, racecar"))
  end

end