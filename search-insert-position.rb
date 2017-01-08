#!/usr/bin/ruby

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def search_insert(nums, target)
	if !nums || nums.empty?
		return 0
	end

	low = 0
	high = nums.size - 1

	if target < nums[0]
		return 0
	elsif target > nums[high]
		return high + 1
	end

	while low < high - 1
		if nums[low] == target
			return low
		elsif nums[high] == target
			return high
		end

		mid = low + (high - low) / 2
		if nums[mid] < target
			low = mid
		elsif nums[mid] > target
			high = mid
		else
			return mid
		end
	end

	if nums[low] == target
		return low
	end
	return high
end
