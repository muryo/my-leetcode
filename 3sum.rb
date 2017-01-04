#!/usr/bin/ruby
# @param {Integer[]} nums
# @return {Integer[][]}
def three_sum(nums) # time limit exceed
	map = Hash.new
	nums.each_with_index { |val, i|
		map[val] = i
	}

	result = []
	len = nums.size - 1

	(0..len).each { |i|
		(0..len).each { |j|
			diff = 0 - nums[i] - nums[j]
			next unless map[diff]
			if i != j && i != map[diff] && j != map[diff]
				arr = [nums[i], nums[j], diff].sort
				unless result.include? arr
					result << arr
				end
			end
		}
	}

	result
end

def three_sum_tuned(nums)
	nums.sort!

	len = nums.size - 1
	result = []

	(0..len).each { |i|
		diff = 0 - nums[i]
		low = 0
		high = len

		while low < high
			if nums[low] + nums[high] < diff
				low += 1
			elsif nums[low] + nums[high] > diff
				high -= 1
			elsif i != low && i != high
					result << [nums[low], nums[high], nums[i]].sort
					low += 1
			else
				low += 1
			end
		end
	}

	result.uniq
end

def three_sum_tuned2(nums)
	nums.sort!

	if nums.size < 3
		return nil
	end

	result = []
	i = 0
	while i < nums.size - 2
		low = i + 1
		high = nums.size - 1

		while low < high
			sum = nums[i] + nums[low] + nums[high]
			if sum == 0
				result << [nums[i], nums[low], nums[high]]
				low += 1
				high -= 1
				low += 1 while low < high && nums[low-1] == nums[low]
				high -= 1 while low < high && nums[high+1] == nums[high]
			elsif sum > 0
				high -= 1
			else
				low += 1
			end
		end

		while i < nums.size-2 && nums[i+1] == nums[i]
			i += 1
		end
		i += 1
	end

	result
end
