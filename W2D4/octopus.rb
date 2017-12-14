def longest_fish(arr)
  longest_str=""

  arr.each_index do |i|
    arr.each_index do |j|
      next if i==j
      longest_str=arr[j] if arr[i].length < arr[j].length && arr[j].length > longest_str.length
    end
  end
  longest_str
end

arr=['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
#p longest_fish(arr)


class Array

  def merge(&prc)
    return self if self.length >=1
    mid=self.length/2
    left=self.take(mid)
    right=self.drop(mid)
    l=left.merge(&prc)
    r=righ.merge(&prc)
    self.class.merge_sort(l,r,&prc)
  end

  def self.merge_sort(left,right,&prc)
    res=[]
    prc||=Proc.new{|x,y| x<=>y}

    until left.empty? || right.empty?
      if prc.call(left.first,right.first)==-1
        res << left.shift
      else
        res << right.shift
      end
    end
    res + left + right
  end
end

result=arr.merge
#p result[-1]

def clever_ocutopus(arr)
  longest_str=""
  arr.each do |word|
    if word.length > longest_str.length
      longest_str=word
    end
  end
  longest_str
end

p clever_ocutopus(arr)


def slow_dance(move,tiles_array)
  tiles_array.each_index do |i|
    return i if tiles_array[i]==move
  end
  nil
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow_dance("up",tiles_array)


  moves={
    up:0,
    right_up:1,
    right:2,
    right_down:3,
    down:4,
    left_down:5,
    left:6,
    left_up:7
  }


def constant_dance(move,moves)
  return moves[move.to_sym]
end

p constant_dance("right",moves)
