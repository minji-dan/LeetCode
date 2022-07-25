class Solution:
    def isPalindrome(self, x: int) -> bool:
        if(x<0):
            return(False)
        if(x==0):
            return(True)
        res = []
        i = 0;
        tmp = x
        while (1): 
            if (0< tmp < 10): #일의자리 일 때 
                res.append(tmp)
                break
            res.append(tmp % 10) #나머지 
            # print(i, "나머지", res)
            tmp = tmp // 10
            # print(i, "몫", tmp)
            i= i+1;
        # print(len(res))
        j = 0
        res_len=len(res)
      
        while(len(res) // 2 != j):
            if(res[j] != res[len(res)-j-1]):
                return(False)
            j = j+1
        return(True)
        
            