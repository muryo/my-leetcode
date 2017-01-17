#!/usr/bin/env ruby
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def create_tree(preorder, ps, pe, inorder, is, ie, index_map)
        if ps > pe || is > ie
                return nil
        end

        root = TreeNode.new(preorder[ps])
        mid = index_map[preorder[ps]]

        num = mid - is
        root.left = create_tree(preorder, ps + 1, ps + num, inorder, is, is + num - 1, index_map)
        root.right = create_tree(preorder, ps + num + 1, pe, inorder, is + num + 1, ie, index_map)

        return root
end

def build_tree(preorder, inorder)
        return nil if preorder.empty? || inorder.empty?
        index_map = {}
        inorder.each_with_index do |val, i|
            index_map[val] = i
        end

        return create_tree(preorder, 0, preorder.size - 1, inorder, 0, inorder.size - 1, index_map)
end

def build_tree_buggy(preorder, inorder)
	return nil if preorder.nil? || inorder.nil? || preorder.empty? || inorder.empty?

	root = TreeNode.new(preorder[0])

	if preorder.size == 1
		root
	end

	index = 0
	inorder.each_with_index do |val, i|
		if val == preorder[0]
			index = i
			break
		end
	end

	if index == 0
		root.left = nil
		root.right = build_tree(preorder[1..-1], inorder[1..-1])
	else

		in_index = index - 1

		pre_index = 0
		preorder.each_with_index do |val, i|
			if val == inorder[in_index]
				pre_index = i
				break
			end
		end

		unless preorder[1..pre_index].empty?
			root.left = build_tree(preorder[1..pre_index], inorder[0..in_index])
		end

		unless preorder[pre_index + 1..-1].empty?
			root.right = build_tree(preorder[pre_index + 1..-1], inorder[in_index + 2..-1])
		end

	end
	root
end
