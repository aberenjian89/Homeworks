class Map
  attr_reader :arr
  def initialize
    @arr=[]
  end
  def assign(key,value)
    res=lookup(key)
    if res.empty?
      @arr << [key,value]
    else
      index=@arr.index(res.flatten)
      @arr[index][1]=value
    end
  end

  def lookup(key)
    res=@arr.select{|a| a[0]==key}
    return nil if res.nil?
    res

  end

  def remove(key)
    @arr.delete_if{|a| a[0]==key}
  end

  def show
    @arr.dup
  end
end


obj=Map.new
obj.assign('a',1)
obj.assign('b',2)
obj.assign('c',3)
obj.assign('d',4)
p obj.show
obj.assign('d',5)
p obj.show
p obj.lookup('d')
p obj.remove('d')
obj.show
