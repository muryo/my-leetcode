#!/usr/binruby

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
	map = Hash.new

	nums.each_with_index { |item, i|
		map[item] = i
	}

	nums.each_with_index { |item, i|
		if map[target-item] && i != map[target-item]
			return [i, map[target-item]]
		end
	}

	return nil
end
