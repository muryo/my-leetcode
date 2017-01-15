#!/usr/bin/env ruby
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
	return 0 unless root

	left_depth = max_depth(root.left)
	right_depth = max_depth(root.right)
	return (left_depth > right_depth ? left_depth : right_depth ) + 1
end

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
	return 0 unless root

	d1, d2 = [min_depth(root.left), min_depth(root.right)].sort

	1 + (d1 > 0 ? d1 : d2)
end
