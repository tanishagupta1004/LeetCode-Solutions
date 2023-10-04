class Solution {
public:
    int maxSum(vector<int>& nums) {
        int max_digit[10]={0};
        int ans=-1;
        for(auto num:nums)
        {
            int maxi=INT_MIN;
            int temp=num;
            while(temp)
            {
                maxi=max(maxi,temp%10);
                temp=temp/10;
            }
            if(max_digit[maxi])
            {
                ans=max(ans,num+max_digit[maxi]);
            }
            if(num>max_digit[maxi])
            {
                max_digit[maxi]=num;
            }
        }
        return ans;
    }
};