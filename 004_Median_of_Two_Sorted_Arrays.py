#!/usr/bin/python

class Solution(object):
    def findMedianSortedArray(self, nums1, nums2):
        """
        :type nums1: List[int]
        :type nums2: List[int]
        :rtype float
        """
        combine_nums = []
        i = j = 0
        len_1 = len(nums1)
        len_2 = len(nums2)
        while i < len_1 and j < len_2:
            if nums1[i] < nums2[j]:
                combine_nums.append(nums1[i])
                i += 1
            else:
                combine_nums.append(nums2[j])
                j += 1

        if i < len_1:
            while i < len(nums1):
                combine_nums.append(nums1[i])
                i += 1
        if j < len_2:
            while j < len(nums2):
                combine_nums.append(nums2[j])
                j += 1

        if (len_1 + len_2) % 2 == 1:
            return combine_nums[(len_1 + len_2) / 2]
        else:
            mid = (len_1 + len_2) / 2
            return 1.0 * (combine_nums[mid- 1] + combine_nums[mid]) / 2

        # while True:
        #     while nums1[i] <= nums2[j] and i < len(nums1) or j == len(nums2):
        #         print i, j
        #         combine_nums.append(nums1[i])
        #         i += 1
        #         if i == len(nums1):
        #             break

        #     while nums2[j] <= nums1[i] and j < len(nums2) or i == len(nums1):
        #         combine_nums.append(nums2[j])
        #         j += 1
        #         if j == len(nums2):
        #             break

        #     if len(combine_nums) == len(nums1) + len(nums2):
        #         break


if __name__ == '__main__':
    s = Solution()
    print s.findMedianSortedArray([1, 1], [1, 2])
    print s.findMedianSortedArray([1, 3], [2])
    print s.findMedianSortedArray([1, 2], [3, 4])
