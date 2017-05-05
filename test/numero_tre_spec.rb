require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/spec'
require '.././classes/numero_uno'
require '.././classes/numero_due'
require '.././classes/numero_tre'

describe NumeroTre do
	
	it "assegna al @value 0 il @message 0" do
		numero_instance = NumeroTre.new(0)
		numero_instance.message.must_equal(0)
	end
	
	it "assegna al @value 3 il @message 'Baro' colorato di verde" do
		numero_instance = NumeroTre.new(3)
		numero_instance.message.must_equal('Baro'.green)
	end
	
	it "assegna al @value 5 il @message 'Sello' colorato di rosso" do
		numero_instance = NumeroTre.new(5)
		numero_instance.message.must_equal('Sello'.red)
	end

	it "assegna al @value 7 il @message 'Nardo' colorato di giallo" do
		numero_instance = NumeroTre.new(7)
		numero_instance.message.must_equal('Nardo'.yellow)
	end
	
	it "assegna al @value 15 (multiplo di 3 e 5) il @message 'BaroSello' colorato di blu" do
		numero_instance = NumeroTre.new(15)
		numero_instance.message.must_equal('BaroSello'.blue)
	end
	
end