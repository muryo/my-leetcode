#!/usr/bin/python

# Definiton for singly-linked list.

class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution(object):
    def addTwoNumber(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """

        head = cur = ListNode(0)
        carry = 0
        while l1 or l2:
            val = carry
            if l1:
                val += l1.val
                l1 = l1.next
            if l2:
                val += l2.val
                l2 = l2.next

            cur.next = ListNode(val % 10)
            carry = val / 10
            cur = cur.next

        if carry == 1:
            cur.next = ListNode(1)

        return head.next
