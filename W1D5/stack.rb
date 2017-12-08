class Stack
    attr_reader :arr
    def initialize
      # create ivar to store stack here!
      @arr=[]
    end

    def add(el)
      # adds an element to the stack
      @arr.push << el
    end

    def remove
      # removes one element from the stack
      @arr.pop
    end

    def show
      # return a copy of the stack
      @arr.dup
    end
  end


obj=Stack.new
obj.add(1)
obj.add(2)
obj.add(4)
obj.add(5)
obj.add(6)
p obj.show
obj.remove
p obj.show
