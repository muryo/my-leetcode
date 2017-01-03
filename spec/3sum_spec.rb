require "./3sum.rb"

describe "3sum to 0" do
	it "find all unique triplets in the array which gives the sum of zero" do
		expect(three_sum([-1, 0, 1, 2, -1, -4])).to eq [[-1, 0, 1], [-1, -1, 2]]
		expect(three_sum_tuned([-1, 0, 1, 2, -1, -4])).to eq [[-1, -1, 2], [-1, 0, 1]]
		expect(three_sum_tuned([3,0,-2,-1,1,2])).to eq [[-2,-1,3],[-2,0,2],[-1,0,1]]
	end
end
