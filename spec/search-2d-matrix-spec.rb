require "./search-2d-matrix.rb"

describe "search 2D matrix" do
	it "determines whether a given number exists in a special sorted matrix" do
		expect(search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 50]], 3)).to eq true
		expect(search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 50]], 4)).to eq false
		expect(search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 50]], 5)).to eq true
		expect(search_matrix([], 5)).to eq false
		expect(search_matrix(nil, 5)).to eq false
		expect(search_matrix([[]], 5)).to eq false
		expect(search_matrix([[1]], 1)).to eq true
		expect(search_matrix([[1], [3]], 3)).to eq true
	end
end
