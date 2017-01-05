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
		if index.size > 0 && heights[i] >= heights[index.last]
			index.push(i)
		elsif index.size >0 && heights[i] < heights[index.last]
			bar = heights[index.pop]
			sum = bar * ( index.empty? ? (i - 1) : (i - 1 - index.last))
			max_rectangle = sum if sum > max_rectangle
		else
			index.push(i)
		end
		i += 1
	end

	max_rectangle
end
