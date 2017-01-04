require "./3sum-closest.rb"

describe "3sum find closest" do
	it "find three integers in array such that the sum is closest to the target and return the sum" do
		expect(three_sum_closest([1,6,9,14,16,70], 81)).to eq 80
		expect(three_sum_closest([0, 2, 1, -3], 1)).to eq 0

		expect(three_sum_closest([-1, 2, 1, -4], 1)).to eq 2
		expect(three_sum_closest([-1, 2, 1, -4], 2)).to eq 2
		expect(three_sum_closest([-1, 2, 1, -4], -4)).to eq -4
		expect(three_sum_closest([0, 1, 2], 0)).to eq 3
		expect(three_sum_closest([0, 2, 1, -3], 1)).to eq 0
	end
end
