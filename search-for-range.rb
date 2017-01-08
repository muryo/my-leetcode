#!/usr/bin/ruby

# @param {Integer[]} nums
# @param {Integer} target
# @return {Interget[]}

def search_range(nums, target)
	if !nums || nums.empty?
		return [-1, -1]
	end

	range = []
	low = 0
	high = nums.size - 1

	while low < high - 1
		mid = low + (high - low) / 2
		if target <= nums[mid]
			high = mid
		else
			low = mid
		end
	end

	if target == nums[low]
		range << low
	elsif target == nums[high]
		range << high
	else
		return [-1, -1]
	end

	low = 0
	high = nums.size - 1

	while low < high - 1
		mid = low + (high - low) / 2
		if target >= nums[mid]
			low = mid
		else
			high = mid
		end
	end

	if target == nums[high]
		range << high
	elsif target == nums[low]
		range << low
	else
		return [-1, -1]
	end

	return range
end
