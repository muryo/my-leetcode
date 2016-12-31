require "./pascal_triangle2.rb"

describe "pascal triangle2" do
	it "row 1-4" do
		expect(pascal2(0)).to eq [1]
		expect(pascal2(1)).to eq [1,1]
		expect(pascal2(2)).to eq [1,2,1]
		expect(pascal2(3)).to eq [1,3,3,1]
	end
end
