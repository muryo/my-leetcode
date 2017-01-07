#!/usr/bin/ruby

# @param {Inter} x
# @return {Boolean}
# Do it without extra space
def is_palindrome(x)
	if !x || x < 0
		return false
	end
	if x / 10 == 0
		return true
	end

	tens = 10
	while x / tens > 0
		tens = 10 * tens
	end

	tens = tens / 10
	while tens > 1
		low = x % 10
		high = x / tens
		if low != high
			return false
		end

		x = (x - high * tens) / 10
		tens = tens / 100

	end

	return true
end
