class Fraccion
        include Comparable

        attr_reader :a, :b
        def initialize(a, b)
                x = gcd(a, b)
                @a = a / x
                @b = b / x        
        end

        def gcd(u, v)
                u, v = u.abs, v.abs
                while v != 0
                        u, v = v, u % v
                end
                u
        end

def num()
                return @a
        end
        
def den()
                return @b
        end
        
def to_s
                "#{@a}/#{@b}"
        end
        
def to_f
                @a.to_f/@b.to_f
        end
        
def ==(x, y)
                return @a == x && @b  == y
        end

def abs
                x = @a.to_f / @b.to_f
                "#{x}"
        end
        
def reciprocal 
                x = @b
                y = @a
                "#{x}/#{y}"
        end

def -
                "-#{@a}/#{@b}"
        end
        
def minimo(c, d)
                z = gcd(c, d)
        c = c / z
        d = d / z
        return c, d
        end

def minMultiplo(u, v)
                u, v = u.abs, v.abs
                return (u / gcd(u,v)) * v
        end

def + *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                if (@b == y) # Igual denominador
                        @a += x
                else # Distinto denominador
                        den = minMultiplo(@b,y)
                        num = ((den / @b) * @a) + ((den / y) * x)
                        @a, @b = minimo(num, den)
                end
                x = gcd(@a, @b)
                @a = @a / x
                @b = @b / x
                "#{@a}/#{@b}"
        end

def resta *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                if (@b == y) # Igual denominador
                        @a -= x
                else # Distinto denominador
                        den = minMultiplo(@b,y)
                        num = ((den / @b) * @a) - ((den / y) * x)
                        @a, @b = minimo(num, den)
                end
                x = gcd(@a, @b)
                @a = @a / x
                @b = @b / x
                "#{@a}/#{@b}"
        end

def * *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                        @a, @b = minimo(@a * x, @b * y)

                "#{@a}/#{@b}"
        end

def / *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                @a, @b = minimo(@a * y, @b * x)

                "#{@a}/#{@b}"
        end

def % *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end

                if (@b == y) # Igual denominador
                        @a += x
                else # Distinto denominador
                        den = minMultiplo(@b,y)
                        num = ((den / @b) * @a) + ((den / y) * x)
                        @a, @b = minimo(num, den)
                end
                x = gcd(@a, @b)
                @a = @a / x
                @b = @b / x

                x = @b
                @a = x - @a
                "#{@a}/#{@b}"
        end

def < *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                if (@b == y) # Igual denominador
                        return @a < x
                else
                        den = minMultiplo(@b,y)
                        @a = ((den / @b) * @a)
                        x = ((den / y) * x)
                        return @a < x
                end
        end

def > *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                if (@b == y) # Igual denominador
                        return @a > x
                else
                        den = minMultiplo(@b,y)
                        @a = ((den / @b) * @a)
                        x = ((den / y) * x)
                        return @a > x
                end
        end

def <= *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                if (@b == y) # Igual denominador
                        return @a <= x
                else
                        den = minMultiplo(@b,y)
                        @a = ((den / @b) * @a)
                        x = ((den / y) * x)
                        return @a <= x
                end
        end

def >= *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                if (@b == y) # Igual denominador
                        return @a >= x
                else
                        den = minMultiplo(@b,y)
                        @a = ((den / @b) * @a)
                        x = ((den / y) * x)
                        return @a >= x
                end
        end

        def prueba *args
                if args.size == 2
                        x, y = minimo(args[0],args[1])
                else
                        x = args[0]
                        y = 1
                end
                        @a, @b = minimo(@a * x, @b * y)
                x = @a.to_f / @b.to_f
                "#{x}"
        end

        def <=>(nuevo)
                return nil unless numero.instance_of? Fraccion
                (@a.to_f/@b.to_f) <=> (nuevo.a.to_f/nuevo.b.to_f)
        end
end
