class Queue
    attr_reader :arr
    def initialize
      @arr=[]
    end

    def enqueue(el)
      @arr.push(el)
    end

    def dequeue
      @arr.shift
    end

    def show
      @arr.dup
    end
  end


obj=Queue.new
obj.enqueue(1)
obj.enqueue(3)
obj.enqueue(4)
p obj.show
obj.dequeue
p obj.show
obj.enqueue(5)
p obj.show
