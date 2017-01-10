require "./find_peak_element.rb"

describe "find peak element" do
	it "finds the peak element that is great than its neighbors" do
		expect(find_peak_element([1, 2, 3, 1])).to eq 2
		expect(find_peak_element([1, 1])).to eq nil
		expect(find_peak_element([1])).to eq 0
		expect(find_peak_element([1, 2])).to eq 1
		expect(find_peak_element([1, 2, -1, 1])).to eq 1
		expect(find_peak_element([1, 1, -1, 3])).to eq 3
		expect(find_peak_element([3, 2, -1, 1])).to eq 0
	end
end
