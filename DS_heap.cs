class MinHeap
{
    private List<int> heap;

    private int Parent(int i) => (i-1) / 2;
    private int LeftChild(int i) => i * 2 + 1;
    private int RightChild(int i) => i * 2 + 2;

    public MinHeap()
    {
        heap = new List<int>();
    }

    // O(1)
    public int Peek()
    {
        return heap[0];
    }

    // O(log n)
    private void Heapify(int i)
    {
        int smallest = i;
        int left = LeftChild(i);
        int right = RightChild(i);

        if (left < heap.Count && heap[left] < heap[smallest])
            smallest = left;
        if (right < heap.Count && heap[right] < heap[smallest])
            smallest = right;

        if (smallest != i)
        {
            Swap(i, smallest);
            Heapify(smallest);
        }
    }

    // O(log n)
    public void Add(int item)
    {
        heap.Add(item);
        int index = heap.Count - 1;

        while (index != 0)
        {
            if (heap[index] < heap[Parent(index)])
            {
                Swap(index, Parent(index));
                index = Parent(index);
            }
            else
            {
                break;
            }
        }
    }

    // O(1)
    private void Swap(int index, int index2)
    {
        int temp = heap[index];
        heap[index] = heap[index2];
        heap[index2] = temp;
    }

    // O(logn)
    public int GetMin()
    {
        int root = heap[0];
        int last = heap[heap.Count - 1];

        heap[0] = last;
        heap[heap.Count - 1] = root;
        heap.RemoveAt(heap.Count - 1);

        Heapify(0);

        return root;
    }
}

var heap = new MinHeap();
heap.Add(5);
heap.Add(2);
heap.GetMin();
