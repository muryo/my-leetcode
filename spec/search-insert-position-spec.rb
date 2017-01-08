require "./search-insert-position.rb"

describe "search insert poisiton" do
	it "finds the proper position for target in a given sorted array" do
		expect(search_insert([1, 3, 5, 6], 5)).to eq 2
		expect(search_insert([1, 3, 5, 6], 2)).to eq 1
		expect(search_insert([1, 3, 5, 6], 7)).to eq 4
		expect(search_insert([1, 3, 5, 6], 0)).to eq 0
		expect(search_insert([], 0)).to eq 0
		expect(search_insert([1, 3], 3)).to eq 1
		expect(search_insert([1, 3], 1)).to eq 0
	end
end
