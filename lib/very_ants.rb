require "very_ants/int"
require "very_ants/version"

class Fixnum
  extend VeryAnts::Int

  @@c = 1

  def self.how_antsy_do_you_feel(i)
    @@c = i
  end

  def self.i_forget_how_antsy_i_feel
    @@c
  end

  def +(other)
    Fixnum::plus(self, other, @@c)
  end

  def -(other)
    Fixnum::minus(self, other, @@c)
  end

  def *(other)
    Fixnum::mult(self, other, @@c)
  end

  def /(other)
    Fixnum::divide(self, other, @@c)
  end

  def %(other)
    Fixnum::mod(self, other, @@c)
  end
end
