// 933. Number of Recent Calls

var RecentCounter = function() {
    this.queue = [];
};

// TC:O(n)
// SC:O(n)
RecentCounter.prototype.ping = function(t) {
    this.queue.push(t)
    const startRange = t-3000
    let totalPings = 0;
    for (let i=0; i< this.queue.length; i++) {
        if (this.queue[i] >= startRange) {
            totalPings++
        }
    }
    return totalPings
};

RecentCounter.prototype.ping = function(t) {
    this.queue.push(t)

    while (this.queue[0] < t-3000) {
        this.queue.shift();
    }

    return this.queue.length
};
