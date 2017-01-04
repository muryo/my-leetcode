#!/usr/bin/ruby

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[][]}
def four_sum(nums, target)
	if nums.size < 4
		return []
	end

	nums.sort!
	result = []
	i = 0
	while i < nums.size - 3
		j = i + 1
		while j < nums.size - 2
			low = j + 1
			high = nums.size - 1
			while low < high
				sum = nums[i] + nums[j] + nums[low] + nums[high]
				if sum == target
					result << [nums[i], nums[j], nums[low], nums[high]]
					low += 1
					high -= 1
					low += 1 while low < high && nums[low-1] == nums[low]
					high -= 1 while low < high && nums[high+1] == nums[high]
				elsif sum > target
					high -= 1
				else
					low += 1
				end
			end

			while j < nums.size-2 && nums[j+1] == nums[j]
				j += 1
			end
			j += 1
		end

		while i < nums.size - 3 && nums[i+1] == nums[i]
			i += 1
		end
		i += 1
	end

	result
end
