using System;
using System.Collections.Generic;

public class PriorityQueue<T>
{
    List<(T item, int priority)> maxheap = new List<(T item, int priority)>();

    private int Parent(int i) => (i -1) / 2);
    private int RightChild(int i) => (i * 2) + 2;
    private int LeftChild(int i) => (i * 2) + 1;

    public PriorityQueue()
    {

    }
 
    public void Enqueue(T item, int priority)
    {
        maxheap.Add((item, priority));

        int index = maxheap.Count - 1;
        while (index > 0)
        {
            if (maxheap[Parent(index)].priority < maxheap[index].priority)
            {
                Swap(Parent(index), index);
                index = Parent(index);
            }
            else
            {
                break;
            }
        }
    }

    public (T item, int priority) Dequeue()
    {
        (T item, int priority) topitem = maxheap[0];
        Swap(0 , maxheap.Count - 1);
        maxheap.RemoveAt(maxheap.Count - 1);

        Heapify(0);

        return topitem;
    }

    private void Heapify(int index)
    {
        int curr = index;

        while (true)
        {
            int rightChild = RightChild(curr);
            int leftChild = LeftChild(curr);
            int biggest = curr;

            if (leftChild < maxheap.Count && maxheap[leftChild].priority > maxheap[biggest].priority)
            {
                biggest = leftChild;
            }

            if (rightChild < maxheap.Count && maxheap[rightChild].priority > maxheap[biggest].priority)
            {
                biggest = rightChild;
            }

            if (biggest == curr)
            {
                break;
            }

            Swap(curr, biggest);
            curr = biggest;
        }
    }

    private void Swap(int i1, int i2)
    {
        (T item, int priority) temp = maxheap[i1];
        maxheap[i1] = maxheap[i2];
        maxheap[i2] = temp;
    }
}

// Example usage:
// var pq = new PriorityQueue<string>();
// pq.Enqueue("task1", 2);
// pq.Enqueue("task2", 1);
// Console.WriteLine(pq.Dequeue()); // Outputs: task2
