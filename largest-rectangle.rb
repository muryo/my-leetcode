#!/usr/bin/ruby

# @param {Integer[]} heights
# @return {Integer}
def largest_rectangle_area(heights)
	max_rectangle = 0
	len = heights.size

	return 0 if len == 0
	return heights[0] if len == 1
	(0..len-1).each { |i|
		next if heights[i] == 0
		min = heights[i]
		(i..len-1).each { |j|
			break if heights[j] == 0
			width = j - i + 1
			if (heights[j] < min)
				min = heights[j]
			end

			#puts "width min: #{width} #{min}"
			area_size = width * min

			if (area_size > max_rectangle)
				max_rectangle = area_size
			end
		}
	}

	max_rectangle
end

def largest_rectangle_area_tune(heights)
	max_rectangle = 0

	heights.push(0)
	len = heights.size
	index = []

	i = 0
	while i < len
		if index.empty? || heights[i] >= heights[index.last]
			index.push(i)
			i += 1
		else
			bar = heights[index.pop]
			sum = bar * ( index.empty? ? i  : (i - 1 - index.last))
			max_rectangle = sum if sum > max_rectangle
		end
	end

	max_rectangle
end

# @param {Character[][]} matrix
# @return {Integer}
# 1 0 1 0 0
# 1 0 1 1 1
# 1 1 1 1 1
# 1 0 0 1 0
def maximal_rectangle(matrix)
	return 0 unless matrix
	if matrix.empty? || matrix[0].empty?
		return 0
	end
	height = matrix.size
	length = matrix[0].size

	max = nil
	array_set = []
	(0..length-1).each { |i|
		arr = []
		(0..height-1).each { |j|
			bar = 0
			(i..length-1).each { |k|
				if matrix[j][k] == "1"
					bar += 1
				else
					break
				end
			}
			arr << bar
		}
		array_set << arr
	}

	array_set.each { |arr|
		max = largest_rectangle_area_tune(arr) if !max || largest_rectangle_area_tune(arr) > max
	}

	max
end
