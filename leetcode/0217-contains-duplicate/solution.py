class Solution:
    def containsDuplicate(self, nums: list[int]) -> bool:
        seen_element = set()
        for i in nums:
            if i in seen_element:
                return True
            seen_element.add(i)
        return False 
