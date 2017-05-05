require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require '.././classes/numero_uno'
require '.././classes/numero_due'

describe NumeroDue do
	
	it "assegna al @value 0 il @message 0" do
		numero_instance = NumeroDue.new(0)
		numero_instance.message.must_equal(0)
	end
	
	it "assegna al @value 3 il @message 'Baro'" do
		numero_instance = NumeroDue.new(3)
		numero_instance.message.must_equal('Baro')
	end
	
	it "assegna al @value 5 il @message 'Sello'" do
		numero_instance = NumeroDue.new(5)
		numero_instance.message.must_equal('Sello')
	end

	it "assegna al @value 7 il @message 'Nardo'" do
		numero_instance = NumeroDue.new(7)
		numero_instance.message.must_equal('Nardo')
	end
	
	it "assegna al @value 15 (multiplo di 3 e 5) il @message 'BaroSello'" do
		numero_instance = NumeroDue.new(15)
		numero_instance.message.must_equal('BaroSello')
	end
	
end