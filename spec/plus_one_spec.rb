require "./plus-one.rb"

describe "plus" do
	it "plus one to the number represented by an array and return the new array" do
		expect(plus_one([1, 1, 9])).to eq [1, 2, 0]
		expect(plus_one([1, 1, 3])).to eq [1, 1, 4]
		expect(plus_one([9, 9, 9])).to eq [1, 0, 0, 0]
		expect(plus_one_clear([1, 1, 9])).to eq [1, 2, 0]
		expect(plus_one_clear([1, 1, 3])).to eq [1, 1, 4]
		expect(plus_one_clear([9, 9, 9])).to eq [1, 0, 0, 0]
	end
end
