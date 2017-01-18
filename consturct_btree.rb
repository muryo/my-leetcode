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

class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

def build_tree_concise(preorder, inorder)
	if preorder.empty? || inorder.empty?
		return nil
	end

	root = TreeNode.new(preorder[0])
	mid = inorder.index(preorder[0])

	root.left = build_tree_concise(preorder[1..mid], inorder[0..mid - 1])
	root.right = build_tree_concise(preorder[mid + 1..-1], inorder[mid + 1..-1])

	return root
end

def create_tree(preorder, ps, pe, inorder, is, ie)
        if ps > pe || is > ie
                return nil
        end

        root = TreeNode.new(preorder[ps])
        mid = inorder.index(preorder[ps])

        num = mid - is
        root.left = create_tree(preorder, ps + 1, ps + num, inorder, is, is + num - 1)
        root.right = create_tree(preorder, ps + num + 1, pe, inorder, is + num + 1, ie)

        return root
end

def build_tree(preorder, inorder)
        return nil if preorder.empty? || inorder.empty?

        return create_tree(preorder, 0, preorder.size - 1, inorder, 0, inorder.size - 1)
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
