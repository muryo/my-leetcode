#!/usr/bin/python

class Solution:
    def twoSum(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: List[int]
        """
        val_to_index_map = {}
        for index, val in enumerate(nums):
            val_to_index_map[val] = index

        for index, val in enumerate(nums):
            # second_index = val_to_index_map[target - nums[index]]
            second_index = val_to_index_map.get(target - nums[index])
            if second_index and index != second_index:
                return [index, second_index]

if __name__ == '__main__':
    s = Solution()
    print s.twoSum([3, 2, 4], 6)
    print s.twoSum([2, 5, 5, 11], 10)
