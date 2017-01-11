require "./power_of_two.rb"

describe "power of two" do
	it "judges a give number is a power of two or not" do
		expect(is_power_of_two(1)).to eq true
		expect(is_power_of_two(64)).to eq true
		expect(is_power_of_two(128)).to eq true
		expect(is_power_of_two(255)).to eq false
		expect(is_power_of_two(-16)).to eq false
	end
end
