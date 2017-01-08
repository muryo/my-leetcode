#!/usr/bin/ruby

# @param {Inter[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
	if !matrix || matrix.empty? || matrix[0].empty?
		return false
	end

	length = matrix[0].size
	height = matrix.size
	low = 0
	high = height - 1

	while low < high - 1
		mid = low + (high - low) / 2
		if matrix[mid][0] > target
			high = mid
		elsif matrix[mid][0] < target
			low = mid
		else
			return true
		end
	end

	if matrix[high][0] > target
		row = low
	else
		row = high
	end
	low = 0
	high = length - 1

	while low < high - 1
		mid = low + (high - low) / 2
		if matrix[row][mid] > target
			high = mid
		elsif matrix[row][mid] < target
			low = mid
		else
			return true
		end
	end

	if matrix[row][low] == target || matrix[row][high] == target
		return true
	else
		return false
	end
end

def search_matrix2(matrix, target)
	if !matrix || matrix.empty? || matrix[0].empty?
		return false
	end

	col_len = matrix[0].size
	row_len = matrix.size

	row = row_len - 1
	col = 0
	while row >= 0 && col < col_len
		if target < matrix[row][col]
			row = row - 1
		elsif target > matrix[row][col]
			col = col + 1
		else
			return true
		end
	end
	return false
end
