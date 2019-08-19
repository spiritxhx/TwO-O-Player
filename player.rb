class Player
  attr_accessor :score

  def initialize
    @score=3
  end

  def remove_life
    self.score = self.score - 1
  end

  def dead?
    if self.score==0
      return true
    else
      return false
    end
  end

end