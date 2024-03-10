// TC: O(n)
// SC: O(1)
var minBitFlips = function(start, goal) {
    // XOR start amd goal, 1 -> 0, o-> 1 will only turn 1 in the result, just count the 1's in the res
    return (start^goal).toString(2).split("0").join("").length;
};
