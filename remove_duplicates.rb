#!/usr/bin/ruby

def remove_duplicates(nums)
	j = 0
	count = 0
	len = nums.size()
	#puts "len = #{len}"
	return 0 if len == 0
	(0..len-1).each { |i|
		#puts "#{i} #{j} #{nums[j]} #{nums[i]}"
		if i == 0
			nums[j] = nums[i]
			count = 1
			next
		end

		if (nums[j] != nums[i])
			nums[j + 1] = nums[i]
			j += 1
			count = 1
			next
		elsif count == 1
			nums[j + 1] = nums[i]
			j += 1
			count += 1
		else
			next
		end
	}

	j + 1
end
