#!/usr/bin/ruby

def pascal2(row_index)
	num_rows = row_index + 1
	triangle = Array.new(num_rows) # Array.new(num_rows) { Array.new(num_rows, 0) }
	#triangle[0][0] = 1
	(0..num_rows-1).each { |row|
		triangle[row] = Array.new(row+1, 0)
		triangle[row][0] = triangle[row][row] = 1
		next if row < 2
		(1..row-1).each { |index|
			triangle[row][index] = triangle[row-1][index-1] + triangle[row-1][index]
		}

	}
=begin
	(0..num_rows-1).each { |row|
		(0..row).each { |i|
			print "#{triangle[row][i]} "
		}
		print "\n"
	}
=end
	triangle[row_index]
end

def pascal2_tune(row_index)
	len = row_index + 1
	triangle = Array.new(len, 0)

	triangle[0] = 1

	(1..row_index).each { |i|
		mid = i / 2
		(1..mid).reverse_each { |j|
			triangle[j] = triangle[j-1] + triangle[j]
		}

		(0..(i+1)/2).each { |j|
			triangle[i-j] = triangle[j]
		}
	}

	triangle
end

num = ARGV[0].to_i
#puts "zzz"
#puts pascal2(num)
