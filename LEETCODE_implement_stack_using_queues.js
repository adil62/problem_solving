
var MyStack = function() {
    this.Q1 = []
};

// TC: O(n)
// SC: O(n)
/** 
 * @param {number} x
 * @return {void}
 */
MyStack.prototype.push = function(x) {
    this.Q1.push(x);
    for (let i=0; i<this.Q1.length-1; i++) {
        this.Q1.push(this.Q1.shift());
    }
};

// TC: O(1)
// SC: O(n)
/**
 * @return {number}
 */
MyStack.prototype.pop = function() {
     return this.Q1.shift();
};

// TC: O(1)
/**
 * @return {number}
 */
MyStack.prototype.top = function() {
     return this.Q1[0];
};

// TC: O(1)
/**
 * @return {boolean}
 */
MyStack.prototype.empty = function() {
    return this.Q1.length === 0;
};

/** 
 * Your MyStack object will be instantiated and called as such:
 * var obj = new MyStack()
 * obj.push(x)
 * var param_2 = obj.pop()
 * var param_3 = obj.top()
 * var param_4 = obj.empty()
 */
