//Time Complexity: O(N)
//Space Complexity: O(1)
class Solution {
public:
    void sortColors(vector<int>& nums) {
        //sort(nums.begin(),nums.end());
        int p0=0;
        int p2=nums.size()-1;
        int curr=0;
        while(curr<=p2)
    {
        if(nums[curr]==0)
        {
            int temp=nums[curr];
            nums[curr]=nums[p0];
            nums[p0]=temp;
            p0++;
            curr++;
        }
        else if(nums[curr]==2)
        {
            int temp=nums[curr];
            nums[curr]=nums[p2];
            nums[p2]=temp;
            p2--;
            
        }
        else
        {
            curr++;
        }
    }
     
    }
};