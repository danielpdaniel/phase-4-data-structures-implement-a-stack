# your code here
require 'pry'
class Stack
    attr_accessor :stack, :limit

    def initialize(limit = Float::INFINITY)
        @stack = []
        @limit = limit
    end

    def push(element)
        golby = false
        @stack = @stack.length < @limit ? @stack.push(element) : golby = true
        if golby
            raise "Stack Overflow"
        end
    end
    
    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        empty = @stack.length == 0 ? true : false
    end

    def full?
        full = @stack.length == @limit ? true : false
    end

    def search(target)
        final_index = @stack.length - 1
        i = @stack.length - 1
        while i >= 0
            if @stack[i] == target
                return  final_index - i
            else
                i -= 1
            end
            if i == -1
                return -1
            end
        end
    end
end