class Coffee

  attr_accessor :name, :coffee, :size

  def initialize(name)
    @name = name
    @coffee = coffee
    @size = 3
  end

  def full?
    if @size == 3
      true
    else
      false
    end
  end

  def empty?
    if @size == 0
      true
    else
      false
    end
  end



end
