class RationalNumber
    def initialize(numerador, denominador)
        @num = numerador
        @denom = denominador
        reduce  # Simplificamos
    end

    def num
        @num
    end

    def denom
        @denom
    end

    # Se encarga de simplificar la fraccion al minimo
    def reduce
        divisor = mcd
        @num = @num / divisor
        @denom = @denom / divisor
    end

    # Calcula el Máximo como un divisor (Algoritmo de Euclides)
    def mcd
        r = [@num, @denom]
        i = 1
        while r[i] != 0 do
            r[i+1] = r[i-1] % r[i]
            i = i + 1
        end
        return r[i-1]
    end

    def to_s
        "#{@num}/#{@denom}"
    end

    def to_f
        @num / @denom
    end

    def == (r)
        if r.kind_of? RationalNumber
            return ( (r.num == self.num) and (r.denom == self.denom) )
        else
            return false
        end
    end

    def abs
        nume = 0
        denomi = 0
        if @num < 0
            nume = @num * -1
        else
            nume = @num
        end
        if @denom < 0
            denomi = @denom * -1
        else
            denomi = @denom
        end
        result = RationalNumber.new(nume, denomi)  # Devolvemos el numero racional en sí
        return result
    end

    def reciprocal
        result = RationalNumber.new(@denom, @num)
        return result
    end

    def -@
        result = RationalNumber.new(@num * -1, @denom)
        return result
    end

    private :reduce
end
