#!/usr/bin/python

class Solution(object):
    # def lengthOfLongestSubstring(self, s):
    #     """
    #     :type s: str
    #     :rtype: int
    #     """
    #     max_substring_len = 0
    #     for i in range(len(s)):
    #         j = i
    #         substring_len = 0
    #         map_exist = {}
    #         while j < len(s):
    #             if map_exist.get(s[j]):
    #                 break
    #             else:
    #                 map_exist[s[j]] = 1
    #                 substring_len += 1
    #                 j += 1

    #         if substring_len > max_substring_len:
    #             max_substring_len = substring_len

    #     return max_substring_len

    def lengthOfLongestSubstring(self, s):
        """
        :type s: str
        :rtype: int
        """
        char_map = {}
        for i in range(256):
            char_map[i] = -1

        len_s = len(s)
        max_substring_len = i = 0

        for j in range(len_s):
            if char_map[ord(s[j])] >= i:
                i = char_map[ord(s[j])] + 1
            char_map[ord(s[j])] = j 
            max_substring_len = max(max_substring_len, j - i + 1)
        return max_substring_len

if __name__ == '__main__':
    s = Solution()
    print s.lengthOfLongestSubstring('a')
    print s.lengthOfLongestSubstring('abcd')
    print s.lengthOfLongestSubstring('abcabca')
    print s.lengthOfLongestSubstring('pwwkew')

