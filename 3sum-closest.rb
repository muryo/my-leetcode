#!/usr/bin/ruby

def three_sum_closest(nums, target)
	nums.sort!

	len = nums.size - 1
	result = nil
	delta = nil

	(0..len).each { |i|
		diff = target - nums[i]
		low = 0
		high = len

		while low < high
			if low == i
				low += 1
				next
			end

			if high == i
				high -= 1
				next
			end
			if nums[low] + nums[high] < diff
				low += 1
				if low == high || nums[low] + nums[high] > diff
					if !delta
						delta = (nums[low-1] + nums[high] - diff).abs
						result = nums[low-1] + nums[high] + nums[i]
					elsif delta && delta > (nums[low-1] + nums[high] - diff).abs
						delta = (nums[low-1] + nums[high] - diff).abs
						result = nums[low-1] + nums[high] + nums[i]
						puts "low high i delta result: #{low} #{high} #{i} #{delta} #{result}"
					end
				end
			elsif nums[low] + nums[high] > diff
				high -= 1
				if low == high || nums[low] + nums[high] < diff
					if !delta
						delta = (nums[low] + nums[high+1] - diff).abs
						result = nums[low] + nums[high+1] + nums[i]
					elsif delta && delta > (nums[low] + nums[high+1] - diff).abs
						delta = (nums[low] + nums[high+1] - diff).abs
						result = nums[low] + nums[high+1] + nums[i]
						puts "low high i delta result: #{low} #{high} #{i} #{delta} #{result}"
					end
				end
			elsif i != low && i != high
				return target
			else
				low += 1
			end
		end
	}

	result
end
