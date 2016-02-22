module VeryAnts
  module Int
    def plus(x, y, c)
      helper(x, 1, y, c)
    end

    def minus(x, y, c)
      helper(x, -1, y, c)
    end

    def mult(x, y, c)
      helper(0, x, y, c)
    end

    def divide(x, y, c)
      divide_helper(x, y, c).first
    end

    def mod(x, y, c)
      divide_helper(x, y, c).last
    end

    private

    def helper(init, incr, y, c)
      chance = Rational(1, c)
      real_mult(c, y).times { init = real_plus(init, incr) if rand < chance }
      init
    end

    def real_plus(x, y)
      (x.to_f + y).to_i
    end

    def real_minus(x, y)
      real_plus(x, -y)
    end

    def real_mult(x, y)
      (x.to_f * y).to_i
    end

    def divide_helper(x, y, c)
      raise ZeroDivisionError if y == 0

      chance = Rational(1, c)

      if y < 0
        q, r = divide_helper(x, -y)
        return [-q, r]
      end

      if x < 0
        q, r = divide_helper(-x, y)
        return [-q, 0] if r == 0
        [-real_minus(q, 1), real_minus(y, r)]
      end

      q = 0
      r = x

      (real_mult(c, x.div(y))).times do
        next if rand >= chance
        q = real_plus(q, 1)
        r = real_minus(r, y)
      end

      [q, r]
    end
  end
end
