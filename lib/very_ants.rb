require "very_ants/int"
require "very_ants/version"

class Integer
  extend VeryAnts::Int

  @@c = 1

  def self.how_antsy_do_you_feel(i)
    @@c = i
  end

  def self.i_forget_how_antsy_i_feel
    @@c
  end

  def +(other)
    Integer::plus(self, other, @@c)
  end

  def -(other)
    Integer::minus(self, other, @@c)
  end

  def *(other)
    Integer::mult(self, other, @@c)
  end

  def /(other)
    Integer::divide(self, other, @@c)
  end

  def %(other)
    Integer::mod(self, other, @@c)
  end
end
