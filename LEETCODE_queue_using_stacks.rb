# Implement queue using stack
# Time complexity of push- O(1)
# Time complexity of pop- amortised O(1) somecase o(n) mostly o(1)
# Time complexity of peek- amortised O(1) somecase o(n) mostly o(1)
# Time complexity of empty- O(1)
# Space complexity of push- O(n)
# Space complexity of pop- O(n)
# Space complexity of peek- O(n)
# Space complexity of empty- O(1)
class MyQueue
    def initialize()
        @stack1 = []
        @stack2 = []
    end
 
    def push(x)
        @stack1.push(x)
        return x
    end
 
    # Remove from front
    def pop()
        if @stack2.empty?
            while !@stack1.empty?
                @stack2.push(@stack1.pop())
            end
        end

        return @stack2.pop()
    end

    # Returns the element at the front without deleting it
    def peek()
        if @stack2.empty?
            while !@stack1.empty?
                @stack2.push(@stack1.pop())
            end
        end
        front_element = @stack2.pop()
        number_of_elements = 0

        while !@stack2.empty?
            @stack1.push(@stack2.pop())
            number_of_elements = number_of_elements + 1
        end

        number_of_elements.times do |i|
            @stack2.push(@stack1.pop())
        end
        @stack2.push(front_element)

        return front_element
    end

    def empty()
        return @stack1.empty? && @stack2.empty?
    end
end

q = MyQueue.new()
q.push(1)
q.push(2)
q.push(3)

p q.peek()
p q.pop()
p q.peek()
p q.peek()
p q.pop()
p q.peek()
