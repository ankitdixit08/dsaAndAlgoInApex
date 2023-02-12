/**
 * 
 * input : [9,23,3,2,4,1,4,5,6,78,84,1,0]
Output:[23,78,4,4,5,4,5,6,78,84,-1,-1,-1]

this is a stack question , in which we need to run the loop from the end
**/

public class NextGreaterElementToRight {
    public static List<Integer> nextGreaterElementToRightMethod(List<Integer> nums) {
        // Initialize a list to store the results and a stack to hold elements from nums
        List<Integer> result = new List<Integer>();
        List<Integer> stack = new List<Integer>();
        // Loop through nums starting from the end
        for (Integer i = nums.size() - 1; i >= 0; i--) {
            // If the stack is empty, there is no greater element to the right so add -1
            if (stack.isEmpty()) {
                result.add(-1);
            }
            // If the top element of the stack is greater than nums[i], it is the next greater element to the right
            else if (stack.get(stack.size() - 1) > nums.get(i)) {
                result.add(0, stack.get(stack.size() - 1)); // add the greater element to the front of the result list
            }
            // Otherwise, pop elements from the stack until a greater element is found or the stack is empty
            else {
                while (!stack.isEmpty() && stack.get(stack.size() - 1) <= nums.get(i)) {
                    stack.remove(stack.size() - 1);
                }
                // If the stack is empty, there is no greater element to the right
                if (stack.isEmpty()) {
                    result.add(0, -1);
                }
                // Otherwise, the top element of the stack is the next greater element to the right
                else {
                    result.add(0, stack.get(stack.size() - 1)); // add the greater element to the front of the result list
                }
            }
            // Push the current element onto the stack
            stack.add(nums.get(i));
        }
        return result;
    }
}
