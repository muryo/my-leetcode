require "./remove_duplicates.rb"

describe "remove duplicates" do
	it "removes duplicates" do
		expect(remove_duplicates([1,1,1,2,2,3])).to eq 5
		expect(remove_duplicates([1,1,1,1,1,1])).to eq 2
		expect(remove_duplicates([1,2,3,4,5,6])).to eq 6
		expect(remove_duplicates([1])).to eq 1
		expect(remove_duplicates([1,1,1,3,3,3,33])).to eq 5
		expect(remove_duplicates([])).to eq 0
	end
end
