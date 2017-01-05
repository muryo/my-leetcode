# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
	len = digits.size
	carry = 0

	(0..len-1).reverse_each { |i|
		if i == len-1
			carry = (digits[i] + 1) / 10
			digits[i] = (digits[i] + 1) % 10
		else
			origin = digits[i]
			digits[i] = (origin + carry) % 10
			carry = (origin + carry) / 10
		end
		break if carry == 0
	}

	if carry == 1
		digits[0] = 1
		(1..len).each { |i|
			digits[i] = 0
		}
	end

	digits
end

def plus_one_clear(digits)
	len = digits.size
	carry = 1

	(0..len-1).reverse_each { |i|
		sum = digits[i] + carry
		carry = sum / 10
		digits[i] = sum % 10
		break if carry == 0
	}

	digits.insert(0, 1) if carry == 1

	digits
end
