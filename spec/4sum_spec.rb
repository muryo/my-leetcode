require "./4sum.rb"

describe "4sum" do
	it "find all unique quadruplets in the array which gives the sum of specified target" do
		expect(four_sum([-1, 0, 1, 0, -2, 2], 0)).to eq [[-2, -1, 1, 2], [-2, 0, 0, 2], [-1, 0, 0, 1]]
		expect(four_sum([-4, -1, -1, 0, 1, 2], -1)).to eq [[-4, 0, 1, 2], [-1, -1, 0, 1]]
	end
end
