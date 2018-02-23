class Triangle
  attr_reader :first_side, :second_side, :third_side
  # write code here
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end

  def kind
    if @first_side == @second_side && @first_side == @third_side
      :equilateral
    elsif @first_side != @second_side && @second_side == @third_side ||
      @first_side == @third_side && @first_side != @second_side ||
      @first_side == @second_side && @first_side != @third_side
      :isosceles
    elsif @first_side != @second_side && @second_side != @third_side &&
      @first_side != @third_side
      :scalene
    else
      raise RangeError
    end
  end

  class RangeError < StandardError
    def message
      "your triangles sides must be over 0"
    end
  end
end
