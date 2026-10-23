class Solution:
    def getConcatenation(self, nums: list[int]) -> list[int]:
        n=len(nums)
        empty_arr = []
        for i in range(n*2):
            empty_arr.append(nums[i%n])
        return empty_arr

        
