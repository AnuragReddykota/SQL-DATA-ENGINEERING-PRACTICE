class Solution:
    def maximumWealth(self, accounts: list[list[int]]) -> int:
        highest_amount = 0

        for i in accounts:
            total = 0

            for j in i:
                total = total + j

            if total > highest_amount:
                highest_amount = total

        return highest_amount
