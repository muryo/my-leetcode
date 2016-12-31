#!/usr/bin/ruby

def remove_element(nums, val)
	nums.reject! { |x| x == val }
	nums.size
end

array = [3, 2, 2, 3]
puts remove_element(array, 3)

