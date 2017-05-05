require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require '.././classes/numero_uno'

describe NumeroUno do
	
	it "assegna al @value 0 il @message 0" do
		numero_instance = NumeroUno.new(0)
		numero_instance.message.must_equal(0)
	end
	
	it "assegna al @value 3 il @message 'Baro'" do
		numero_instance = NumeroUno.new(3)
		numero_instance.message.must_equal('Baro')
	end
	
	it "assegna al @value 5 il @message 'Sello'" do
		numero_instance = NumeroUno.new(5)
		numero_instance.message.must_equal('Sello')
	end
	
	it "assegna al @value 15 (multiplo di 3 e 5) il @message 'BaroSello'" do
		numero_instance = NumeroUno.new(15)
		numero_instance.message.must_equal('BaroSello')
	end
	
end