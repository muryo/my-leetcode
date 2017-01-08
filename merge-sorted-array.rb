#!/usr/bin/ruby

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
	pos = m + n - 1
	i = m - 1
	j = n - 1

	while (i >= 0 && j >= 0) do
		if nums1[i] >= nums2[j]
			nums1[pos] = nums1[i]
			pos -= 1
			i -= 1
		else
			nums1[pos] = nums2[j]
			pos -= 1
			j -= 1
		end
	end

	while (j >= 0) do
		nums1[pos] = nums2[j]
		pos -= 1
		j -= 1
	end
end
