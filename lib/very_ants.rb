require "very_ants/int"
require "very_ants/version"

class Fixnum
  include VeryAnts::Int

  @@c = 1

  def self.set_c(i)
    @@c = i
  end

  def self.get_c
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
