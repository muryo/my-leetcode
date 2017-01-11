#!/usr/bin/env ruby

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
	nums_of_1bits = 0
	while n != 0
		nums_of_1bits += 1
		n = n & (n - 1)
	end

	nums_of_1bits
end
