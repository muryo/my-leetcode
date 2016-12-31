require "./pascal_triangle.rb"

describe "Pascal triangle" do
	it "row 1-3" do
		expect(pascal(1)).to  eq [[1]]
		expect(pascal(2)).to  eq [[1], [1,1]]
		expect(pascal(3)).to  eq [[1], [1,1], [1,2,1]]
	end
end
