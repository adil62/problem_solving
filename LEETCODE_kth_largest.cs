public class KthLargest {
    private int _k;
    private readonly PriorityQueue<int, int> _minHeap;

    public KthLargest(int k, int[] nums) {
        _k = k;

        foreach(num in nums)
        {
            Add(num);
        }
    }
    
    public int Add(int val) {
        _minHeap.Enqueue(val, val);

        if (_minHeap.Count > _k)
        {
            _minHeap.Dequeue();
        }

        return _minHeap.Peek(); 
    }
}
