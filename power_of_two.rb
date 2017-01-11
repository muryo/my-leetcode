#!/usr/bin/env ruby

def is_power_of_two(n)
	return false if n < 1

	if (n & (n - 1)) == 0
		return true
	else
		return false
	end
end
