class Position
  def self.next_position(current_position)
    case current_position
    when :north
      :east
    when :east
      :south
    when :south
      :west
    when :west
      :north
    end
  end
end
