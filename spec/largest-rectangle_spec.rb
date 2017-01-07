require "./largest-rectangle.rb"

describe "largest-rectangle" do
	it "finds the area of largest rectangle in the histogram which is representing by n non-negative integers" do
		expect(largest_rectangle_area([2, 0, 2])).to eq 2
		expect(largest_rectangle_area([0, 9])).to eq 9
		expect(largest_rectangle_area([2, 1, 5, 6, 2, 3])).to eq 10
		expect(largest_rectangle_area([2, 1, 5, 6, 4, 3])).to eq 12
		expect(largest_rectangle_area([2, 2, 2])).to eq 6
		expect(largest_rectangle_area([])).to eq 0
		expect(largest_rectangle_area([1])).to eq 1


		expect(largest_rectangle_area_tune([2, 0, 2])).to eq 2
		expect(largest_rectangle_area_tune([0, 9])).to eq 9
		expect(largest_rectangle_area_tune([2, 1, 5, 6, 2, 3])).to eq 10
		expect(largest_rectangle_area_tune([2, 1, 5, 6, 4, 3])).to eq 12
		expect(largest_rectangle_area_tune([2, 2, 2])).to eq 6
		expect(largest_rectangle_area_tune([])).to eq 0
		expect(largest_rectangle_area_tune([1])).to eq 1
	end

	it "finds the largest rectangle containing only 1 and returns its area" do
		expect(maximal_rectangle(["10100", "10111", "11111", "10010"])).to eq 6
		expect(maximal_rectangle(["11100"])).to eq 3
		expect(maximal_rectangle(["0"])).to eq 0
		expect(maximal_rectangle(["1"])).to eq 1
		expect(maximal_rectangle([])).to eq 0
		expect(maximal_rectangle([""])).to eq 0
		expect(maximal_rectangle(nil)).to eq 0
	end
end
