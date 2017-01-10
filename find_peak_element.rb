#!/usr/bin/ruby

# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
	if nums.empty?
		nil
	end

	if nums.size == 1
		return 0
	end

	len = nums.size
	flag = {}
	flag[0] = 1
	flag[len] = -1
	(1..len-1).each { |i|
		if nums[i] > nums[i-1]
			flag[i] = 1
		elsif nums[i] < nums[i-1]
			flag[i] = -1
		else
			flag[i] = 0
		end

		#puts "#{i}: #{flag[i]}"

		if flag[i-1] * flag[i] == -1
			return flag[i] > 0 ? i : i - 1
		end
	}

	if flag[len-1] > 0
		return len - 1
	end

	return nil
end

def find_peak_element_concise(nums)
	if !nums || nums.empty?
		return nil
	end

	len = nums.size
	if len == 1
		return 0
	end

	(0..len-1).each { |i|
		case i
		when 0
			return 0 if nums[i] > nums[i + 1]
		when len - 1
			return len - 1 if nums[i] > nums[i - 1]
		else
			return i if nums[i] > nums[i + 1] && nums[i] > nums[i - 1]
		end
	}
	nil
end
