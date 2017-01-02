require "./2sum.rb"

describe "2sum" do
	it "return 2sum indice" do
		expect(two_sum([1,2,7,9], 9)).to eq [1,2]
		expect(two_sum([3,2,4], 6)).to eq [1,2]
		expect(two_sum([3,3,2,4], 6)).to eq [0,1]
	end
end
