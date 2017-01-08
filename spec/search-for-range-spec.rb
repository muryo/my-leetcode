require "./search-for-range.rb"

describe "search for a range" do
	it "finds the starting and ending position of a given target value in a ascending sorted array" do
		expect(search_range([5, 7, 7, 8, 8, 10], 8)).to eq [3, 4]
		expect(search_range([5, 7, 7, 8, 8, 10], 5)).to eq [0, 0]
		expect(search_range([5, 7, 7, 8, 8, 10], 10)).to eq [5, 5]
		expect(search_range([5, 5, 5], 5)).to eq [0, 2]
		expect(search_range([], 8)).to eq [-1, -1]
		expect(search_range(nil, 8)).to eq [-1, -1]
	end
end
