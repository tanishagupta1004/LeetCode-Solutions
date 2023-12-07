class Solution {
public:
    bool searchMatrix(vector<vector<int>>& matrix, int target) {
        int r=matrix.size();// No of rows
        int c=matrix[0].size();// No of cols
        
        //base case condition
        if(r==0)
        {
            return false;
        }
        //Binary Search Algo
        int low=0;
        int high=r*c-1;

        int midIdx,midElement,rowIdx, colIdx;
        while(low<=high)
        {
            midIdx=low+(high-low)/2;
            rowIdx=midIdx/c;
            colIdx=midIdx%c;

            midElement=matrix[rowIdx][colIdx];

            //condition 1
            if(target==midElement)
            {
                return true;
            }
            else if(target <midElement)
            {
                high=midIdx-1;
            }
            else
            {
                low=midIdx+1;
            }
        }
        return false;
        
        
    }
};