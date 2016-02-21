require "very_ants/int"
require "very_ants/version"

class Fixnum
  include VeryAnts::Int

  @@c = 1

  def self.how_antsy_do_you_feel(i)
    @@c = i
  end

  def self.i_forget_how_antsy_i_feel
    @@c
  end

  def +(other)
    plus(self, other, @@c)
  end

  def -(other)
    minus(self, other, @@c)
  end

  def *(other)
    mult(self, other, @@c)
  end

  def /(other)
    divide(self, other, @@c)
  end

  def %(other)
    mod(self, other, @@c)
  end
end
