class Solution(object):
    def topKFrequent(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: List[int]
        """
        if len(nums)==k:
            return set(nums)
        else:
            count=Counter(nums)
            return heapq.nlargest(k,count.keys(),key=count.get)
        