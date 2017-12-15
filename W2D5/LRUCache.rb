class LRUCache
  def initialize(len)
    @len=len
    @arr=[]
  end

  def count
    # returns number of elements currently in cache
    @arr.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @arr.include?(el)
      @arr.delete(el)
      @arr << el
    else
      if count >= @len
        @arr.shift
        @arr << el
      else
        @arr << el
      end
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    @arr.dup
  end

  private
  # helper methods go here!
end


p johnny_cache = LRUCache.new(4)

p johnny_cache.add("I walk the line")
p johnny_cache.add(5)

p johnny_cache.count # => returns 2

p johnny_cache.add([1,2,3])
p johnny_cache.add(5)
p johnny_cache.add(-5)
p johnny_cache.add({a: 1, b: 2, c: 3})
p johnny_cache.add([1,2,3,4])
p johnny_cache.add("I walk the line")
p johnny_cache.add("I walk the line")
p johnny_cache.add({a: 1, b: 2, c: 3})
