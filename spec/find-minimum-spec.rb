require "./find-minimum.rb"

describe "find minimum" do
	it "find the minimum in a maybe rotated sorted array which has no duplicates" do
		expect(find_minimum([4, 5, 6, 7, 0, 1, 2])).to eq 0
		expect(find_minimum([4, 5])).to eq 4
		expect(find_minimum([4])).to eq 4
	end

	it "find the minimum in a maybe rotated sorted array" do
		expect(find_minimum2([3, 1, 1])).to eq 1
		expect(find_minimum2([3, 1, 3])).to eq 1
		expect(find_minimum2([10, 1, 10, 10, 10])).to eq 1
		expect(find_minimum2([4, 5, 6, 6, 7, 0, 1, 1, 1, 2])).to eq 0
		expect(find_minimum2([4, 5, 5, 5])).to eq 4
		expect(find_minimum2([4])).to eq 4
	end

end
