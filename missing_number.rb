#!/usr/bin/env ruby

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
	if !nums || nums.empty?
		return nil
	end

	n = nums.size
	map = {}

	nums.each { |num|
		map[num] = 1
	}

	(0..n).each { |i|
		return i unless map[i].exist?
	}

	return nil
end

def missing_number2(nums)
	if !nums || nums.empty?
		return nil
	end

	n = nums.size
	x = 0
	(0..n).each { |i|
		x ^= i
	}

	nums.each { |num|
		x ^= num
	}

	return x
end
