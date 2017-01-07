#!/usr/bin/ruby
# @param {Integer[]} nums eg: [4, 5, 6, 7, 0, 1, 2]
# @return {Integer}

def find_minimum(nums)
	if !nums || nums.size == 0
		return nil
	end

	len = nums.size
	return nums[0] if nums.size == 1 || nums[0] < nums[len-1]

	low = 0
	high = len - 1
	while low < high - 1
		mid = (low + high) / 2
		if nums[mid] > nums[low]
			low = mid
		elsif nums[mid] < nums[high]
			high = mid
		end
	end

	min = nums[low+1]
	return min
end

def find_minimum2(nums)
	if !nums || nums.size == 0
		return nil
	end

	len = nums.size
	return nums[0] if nums.size == 1 || nums[0] < nums[len-1]

	low = 0
	high = len - 1
	while low < high - 1
		mid = (low + high) / 2
		if nums[mid] == nums[low] && nums[mid] == nums[high]
			min1 = find_minimum2(nums[low..mid])
			min2 = find_minimum2(nums[mid..high])
			if min1 < min2
				return min1
			else
				return min2
			end
		elsif nums[mid] >= nums[low]
			low = mid
		elsif nums[mid] <= nums[high]
			high = mid
		end
	end

	min = nums[low+1]
	return min
end
