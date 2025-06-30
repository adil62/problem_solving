public class Solution {
    private PriorityQueue<int, int> _pQueue = new PriorityQueue<int, int>();

    public int LastStoneWeight(int[] stones) {
        if (stones.Length == 0) 
            return 0;

        foreach (int stone in stones)
        {
            _pQueue.Enqueue(stone, -stone);
        }

        while (_pQueue.Count > 1)
        {
            var first = _pQueue.Dequeue();
            var second = _pQueue.Dequeue();

            if (first != second)
            {
                _pQueue.Enqueue(first - second, -(first - second));
            }
        }

        return _pQueue.Count == 0 ? 0 : _pQueue.Peek();
    }
}
