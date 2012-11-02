require 'rational'

describe RationalNumber do

    let (:numerador) { 6 }
    let (:denominador) { 4 }
    let (:reducida) {[3, 2]} # Array con el numerador y el denominador reducidos

    before :all do
        @rat = RationalNumber.new(numerador, denominador)
    end

    it "Debe existir un numerador" do
        @rat.num.kind_of? Integer
    end

    it "Debe existir un denominador" do
        @rat.denom.kind_of? Integer and @rat.denom > 0
    end

    it "Debe de estar en su forma reducida" do
        @rat.num.should == reducida[0]
        @rat.denom.should == reducida[1]
    end

end
