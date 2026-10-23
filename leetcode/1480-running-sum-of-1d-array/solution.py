class Solution:
    def runningSum(self, nums: list[int]) -> list[int]:
        result = []
        total = 0

        for number in nums:
            total = total + number          
            result.append(total)    
            pass

        return result

  
