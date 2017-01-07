require "./palindrome-number.rb"

describe "palindrome number" do
	it "determines whether a given number is palindrome or not" do
		expect(is_palindrome(1021)).to eq false
		expect(is_palindrome(1001)).to eq true
		expect(is_palindrome(100021)).to eq false
		expect(is_palindrome(1221)).to eq true
		expect(is_palindrome(nil)).to eq false
		expect(is_palindrome(1)).to eq true
		expect(is_palindrome(-1221)).to eq false
		expect(is_palindrome(31221)).to eq false
	end
end
