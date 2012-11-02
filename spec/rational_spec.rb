require 'rational'

describe RationalNumber do

    let (:numerador) { 5 }

    before :all do
        @rat = RationalNumber.new(numerador)
    end

    it "Debe existir un numerador" do
        @rat.num.kind_of? Integer
    end

end
