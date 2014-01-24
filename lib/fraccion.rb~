class Fraccion

   def initialize(num, den)
      mcd = gcd(num, den)
      @n = num / mcd
      @d = den / mcd
   end

   def gcd(n, d)
      n1 = n
      n2 = d
      gcd = 1
      k = 1
      while k <= n1 and k <= n2
         if n1 % k == 0 and n2 % k == 0
            gcd = k
         end
         k += 1
      end
      return gcd
    end

   def mcm(f1, f2)
      if f1 % f2 == 0
         return f1
      elsif f2 % f1 == 0
         return f2
      else
         return f1 * f2
      end
   end

   def num()
      return @n
   end
  
   def denom()
      return @d
   end

   def to_s()
      return "#@n/#@d"
   end
  
   def to_f()
       r = @n/@d
       return r
   end

   def abs()
       n = num()
       d = denom()
       if n < 0
          n *= -1
       end
       if d < 0
          d *= -1
       end
       return Fraccion.new(n, d)
   end

   
 
   def ==(f)
     if num() == f.num() && denom() == f.denom()
        return True
     end
     return False
   end

   def reciprocal()
       n = denom()
       d = num()
       return Fraccion.new(n, d)
   end
  
   def -()
       n = @n * -1
       d = @d * -1
       return Fraccion.new(n, d)
   end

   def *(f)
      raise unless f.is_a?(Fraccion)
      n = @n * f.num()
      d = @d * f.denom()
      return Fraccion.new(n, d)
   end

  def +(f)
      raise unless f.is_a?(Fraccion)
      mc = mcm(@d, f.denom())
      n = (@n * (mc/@d)) + (f.num() * (mc/f.denom()))
      d = mc
      return Fraccion.new(n, d)
  end


  def -(f)
      raise unless f.is_a?(Fraccion)
      mc = mcm(@d, f.denom())
      n = (@n * (mc/@d)) - (f.num() * (mc/f.denom()))
      d = mc
      return Fraccion.new(n, d)
  end

  def /(f)
      raise unless f.is_a?(Fraccion)
      n = @n * f.denom()
      d = @d * f.num()
      return Fraccion.new(n, d)
   end

  def %(f)
      raise unless f.is_a?(Fraccion)
      r1 = @n/@d
      r2 = f.num()/f.denom()
      return r1%r2
  end

  def <(f)
      r1 = @n/@d
      r2 = f.num()/f.denom()
      if r1 < r2
         return True
      end 
      return False
  end

  def >(f)
      r1 = @n/@d
      r2 = f.num()/f.denom()
      if r1 > r2
         return True
      end 
      return False
  end


  def <=(f)
      r1 = @n/@d
      r2 = f.num()/f.denom()
      if r1 <= r2
         return True
      end 
      return False
  end

  def >=(f)
      r1 = @n/@d
      r2 = f.num()/f.denom()
      if r1 >= r2
         return True
      end 
      return False
  end

end










