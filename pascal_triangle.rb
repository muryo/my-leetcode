#!/usr/bin/ruby

def pascal(num_rows)
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
	triangle
end

num = ARGV[0].to_i
pascal(num)
