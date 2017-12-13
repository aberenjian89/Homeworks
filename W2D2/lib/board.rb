class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1=name1
    @name2=name2
    @cups=Array.new(14){Array.new}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    # (0..5).each do |i|
    #   @cups[i] = :stone
    # end
    # (7..12).each do |i|
    #   @cups[i] = :stone
    # end
    @cups.each_with_index do |arr,i|
      next if i==6 || i==13
      4.times do |i|
        arr << :stone
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos > 13 || start_pos<=0
  end

  def make_move(start_pos, current_player_name)
    arr=@cups[start_pos]
    @cups[start_pos]=[]
    idx=start_pos
    until arr.empty?
      idx+=1
      idx=0 if idx > 13
      if idx==13
        @cups[13] << arr.pop if current_player_name== @name2
      elsif idx==6
        @cups[6] << arr.pop if current_player_name==@name1
      else
        @cups[idx] << arr.pop
      end
    end
    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx==13 || ending_cup_idx==6
      :prompt
    elsif @cups[ending_cup_idx].count==1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups.dup.take(6).all? {|a| a.empty?}
    return true if @cups.dup.drop(6).all?{|a| a.empty?}
    return false
  end

  def winner
   if @cups[6].count==@cups[13].count
     return :draw
   else
     if @cups[6].count > @cups[13].count
       return @name1
     else
       return @name2
     end
   end
  end
end
