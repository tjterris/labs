class Human

  attr_accessor :name, :alertness, :coffee

  def initialize(name)
    @name = name
    @alertness = 0
    @coffee = nil 
  end

  def has_coffee?
    if @coffee
      true
    else
      false
    end
  end

  def needs_coffee?
    if !@coffee
      true
    else
      false
    end
  end

  def buy(item)
    @coffee = item
  end

  def drink!
    @coffee.size -= 1
    @alertness += 0.33
  end


end