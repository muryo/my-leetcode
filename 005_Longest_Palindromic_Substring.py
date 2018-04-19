#!/usr/bin/python

class Solution(object):
    def is_palindrome(self, s):
        len_s = len(s)

        i = 0
        for i in range(len_s / 2):
            if s[i] != s[len_s - 1 - i]:
                return False
        return True

    def longestPalindrome(self, s):
        """
        :type s: str
        :rtype: str
        """
        i = j = max_palindrome_len = max_i = max_j = 0
        len_s = len(s)

        for i in range(len_s):
            len_p = 0
            j = len_s
            while j > i:
                if self.is_palindrome(s[i:j]):
                    len_p = j - i
                    if (len_p > max_palindrome_len):
                        max_j = j
                        max_i = i
                        max_palindrome_len = len_p
                    break
                j -= 1

        return s[max_i:max_j] 

if __name__ == '__main__':
    s = Solution()
    print s.longestPalindrome('ababd')
    print s.longestPalindrome('a')
    print s.longestPalindrome('cbbd')
