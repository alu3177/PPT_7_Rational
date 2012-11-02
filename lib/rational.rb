class RationalNumber
    attr_accessor :num, :denom
    def initialize(numerador, denominador)
        @num = numerador
        @denom = denominador
        reduce  # Simplificamos
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

end
